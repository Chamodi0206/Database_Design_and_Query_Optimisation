### 1. Indexing
- Add indexes on foreign keys: `user_id`, `post_id` in `comments`, `friendships`.
- Example:
  ```sql
  CREATE INDEX idx_comments_post_id ON comments(post_id);
  CREATE INDEX idx_friendships_user1 ON friendships(user_id_1);
  CREATE INDEX idx_friendships_user2 ON friendships(user_id_2);
  ```

### 2. Normalize with care
- Normalized tables are efficient but can result in complex joins. For high-traffic read operations, consider denormalization.

### 3. Use `EXPLAIN`
- Use `EXPLAIN ANALYZE` to inspect query performance and adjust indexes or query structure accordingly.

### 4. Connection Pooling & Caching
- Use connection pooling (e.g., with PgBouncer for PostgreSQL).
- Cache frequent queries using Redis or memcached.

### 5. Avoid SELECT *
- Always fetch only required columns to reduce payload and improve performance.
