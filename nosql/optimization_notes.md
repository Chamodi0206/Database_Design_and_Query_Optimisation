### 1. Embedding vs. Referencing
- Embed small subdocuments (e.g., user profile in a post).
- Reference large or shared data (e.g., `user_id` in posts).

### 2. Indexing
- Create indexes on commonly queried fields like `user_id`, `post_id`, and `created_at`.
- Example:
  ```js
  db.posts.createIndex({ user_id: 1 });
  db.comments.createIndex({ post_id: 1 });
  ```

### 3. Use Projection
- Only return required fields using `.find({}, { field1: 1, field2: 1 })`

### 4. Use Aggregation Pipeline
- For complex queries like grouping, filtering, and sorting.

### 5. Limit and Paginate
- Use `.limit()` and `.skip()` for performance on large datasets.

### 6. Sharding
- For very large datasets, consider sharding collections on high-cardinality fields like user_id.