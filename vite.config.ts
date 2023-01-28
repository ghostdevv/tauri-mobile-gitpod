import { svelte } from '@sveltejs/vite-plugin-svelte';
import { internalIpV4 } from 'internal-ip';
import { defineConfig } from 'vite';

export default defineConfig(async () => {
    const host = await internalIpV4();

    return {
        plugins: [svelte()],

        server: {
            host: '0.0.0.0',
            port: 5173,
            strictPort: true,
            hmr: {
                protocol: 'ws',
                host,
                port: 5183,
            },
        },
    };
});
