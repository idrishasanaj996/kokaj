import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';
export default defineConfig({
  site: 'https://kokaj-abschleppdienst.pages.dev',
  vite: { plugins: [tailwindcss()] }
});
