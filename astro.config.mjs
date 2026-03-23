import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
  site: 'https://idrishasanaj996.github.io',
  base: '/kokaj',
  vite: {
    plugins: [tailwindcss()]
  },
});
