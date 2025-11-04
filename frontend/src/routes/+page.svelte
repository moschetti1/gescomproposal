<script lang="ts">
  import {Greet} from "$lib/wailsjs/go/app/App.js"
  import {goto} from "$app/navigation"
  import {Button} from "$lib/components/ui/button"
</script>

<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://svelte.dev/docs/kit">svelte.dev/docs/kit</a> to read the documentation</p>

<Button onclick={()=>goto("test")}>Hola</Button>

<Button onclick={()=>Greet("fran")}>Hola</Button>
