
## About
Wails silmula una ventana de navegador usando webkit, y carga el bundle de frontend en ese navegador.

Este proyecto usa:
- Goose para generar y aplicar migraciones.
- Sqlc para transformar queries en SQL a Go.
- Bun para manejo de packetes js.
- Svelte para la app de frontend.
- Tailwindcss.
- Shadcn para componentes UI.
- just para correr comandos.

## Comandos basicos

Para correr la version de desarrollo `wails dev` o `just dev`

Para construir binario `wails build` o `just build`

## Migraciones
Instalar goose:

`go install github.com/pressly/goose/v3/cmd/goose@latest`

Con goose, podes definir migraciones manualmente en sql lo que te da mas control.

Dentro de env.example hay un ejemplo mostrando las variables de entorno que goose necesita.

Para crear una nueva migracion `goose create <nombre que queres darle> sql`

Eso genera un archivo dentro de /migrations

Aplicar todas migraciones pendientes: `goose up`

Aplicar una de las pendientes: `goose up one`

Aplicar hasta version especifica: `goose up-to <version>`

Deshacer ultima version: `goose down`

Deshacer hasta version especifica: `goose down-to <version>`


## Queries
Instalar sqlc

`go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest`

Las queries se mnejan en sql, dentro de queries/

sqlc se encarga de transformarlas en Go con los tipos adequados.

Para eso necesitas correr `sqlc generate` cada vez que hagas un cambio a una query en esa caarpeta.

Podes usar las queries importando el package "repository" desde cualquier lugar.
