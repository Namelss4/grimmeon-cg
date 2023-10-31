using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class MultiPassGaussianBlurG1 : ScriptableRendererFeature
{
    class MultiPassGaussianBlurPass : ScriptableRenderPass
    {
        //Tomar Pantallazo
        //  1. Crear 2 texturas donde se van a guardar los pantallazos
        //      a. Crear un id a la textura para ser guardada [X]
        //      b. Crear objeto de textura en GPU [X]
        //  2. Crear objeto de manipulacion del sistema de render (Command Buffer) [X]
        //  3. Tomar pantallazo con el Command Buffer [X]
        //Modificar Pantallazo Renderizandolo en un Quad perfecto a la pantalla
        //  1. Cargar Material de render [X]
        //  2. Iterar N veces intercambiando las texturas de pantallazo y modificarlas
        //  3. Aplicar pantallazo a la textura original de la pantalla con el command buffer y el material [x]
        //(Ejecutar command buffer)

        private RTHandle temporaryTexture;//id
        private RTHandle temporaryTexture2;//id
        private Material renderMaterial;
        private int passCount;
        public MultiPassGaussianBlurPass(Material renderMaterial, int passCount)
        {
            this.renderMaterial = renderMaterial;
            this.passCount = passCount;
        }
        
        public override void OnCameraSetup(CommandBuffer cmd, ref RenderingData renderingData)
        {
            //if (renderMaterial == null) return;
            RenderTextureDescriptor descriptor = renderingData.cameraData.cameraTargetDescriptor;
            descriptor.depthBufferBits = 0;
            RenderingUtils.ReAllocateIfNeeded(ref temporaryTexture, descriptor, name: "_GaussianBlurTemporary");
            RenderingUtils.ReAllocateIfNeeded(ref temporaryTexture2, descriptor, name: "_GaussianBlurTemporary2");
        }
        
        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {
            if (renderMaterial == null) return;
            CommandBuffer cmd = CommandBufferPool.Get("Gaussian Blur Multi Pass");
            RTHandle originalBuffer = renderingData.cameraData.renderer.cameraColorTargetHandle;
            cmd.Blit(originalBuffer, temporaryTexture);

            var source = temporaryTexture;
            var destination = temporaryTexture2;

            for (int i = 0; i < passCount; i++)
            {
                cmd.Blit(source, destination, renderMaterial, renderMaterial.FindPass("Universal Forward"));
                (source, destination) = (destination, source);
            }
            
            cmd.Blit(destination, originalBuffer);
            context.ExecuteCommandBuffer(cmd);
            cmd.Clear();
        }

        public override void OnCameraCleanup(CommandBuffer cmd)
        {
        }
    }

    MultiPassGaussianBlurPass _mScriptablePassGaussianBlurPass;

    [SerializeField][Range(1,16)] private int passCount;
    [SerializeField] private float pixelOffset;
    [SerializeField] private Material renderMaterial;

    /// <inheritdoc/>
    public override void Create()
    {
        _mScriptablePassGaussianBlurPass = new MultiPassGaussianBlurPass(renderMaterial, passCount);

        // Configures where the render pass should be injected.
        _mScriptablePassGaussianBlurPass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
    }

    // Here you can inject one or multiple render passes in the renderer.
    // This method is called when setting up the renderer once per-camera.
    public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
    {
        renderer.EnqueuePass(_mScriptablePassGaussianBlurPass);
    }
}


