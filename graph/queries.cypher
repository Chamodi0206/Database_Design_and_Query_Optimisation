// Get all posts by friends of Nuwan
MATCH (nuwan:User {id: "u1"})-[:FRIENDS_WITH]->(friend:User)-[:POSTED]->(post:Post)
RETURN post;

// Get all comments on a post
MATCH (user:User)-[c:COMMENTED]->(post:Post {id: "p1"})
RETURN user.name, c.content, c.created_at;

// Get mutual friends between Nuwan and Kamal
MATCH (nuwan:User {id: "u1"})-[:FRIENDS_WITH]->(f:User)<-[:FRIENDS_WITH]-(kamal:User {id: "u2"})
RETURN f.name;

// graph/optimization_notes.md