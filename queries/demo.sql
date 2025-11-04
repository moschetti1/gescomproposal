-- name: GetUserById :one
SELECT * FROM users
WHERE id = ? LIMIT 1;

-- name: GetUsersInTeam :many
SELECT * FROM users
WHERE team_id = ?;

-- name: CreateUser :one
INSERT INTO users (id, team_id, email, name, avatar_url)
VALUES (?, ?, ?, ?, ?)
RETURNING *;
