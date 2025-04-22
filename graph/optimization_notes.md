### 1. Use Indexes
- Create indexes on frequently filtered node properties (e.g., `id`, `username`).
- Example:
```cypher
CREATE INDEX FOR (u:User) ON (u.id);
```

### 2. Query Patterns
- Minimize traversal depth.
- Avoid Cartesian products.

### 3. Use Relationship Types Effectively
- Use descriptive types like `FRIENDS_WITH`, `POSTED`, `COMMENTED`.
- Relationships are first-class citizens in graphs.

### 4. Use `EXPLAIN` and `PROFILE`
- Analyze query plans to tune performance.