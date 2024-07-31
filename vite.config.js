import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: ['resources/css/app.css', 'resources/js/app.js','resources/views/login.blade.php','public/css/app.css'],
            // refresh: true,
            refresh: ['resources/views/**'],
        }),
    ],
<<<<<<< HEAD

=======
>>>>>>> 44208d30f52b1bae7c941b3155b07deb90fa6535
});
