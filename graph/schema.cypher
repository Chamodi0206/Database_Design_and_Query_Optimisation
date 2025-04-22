CREATE (:User {id: "u1", username: "nuwan_perera", name: "Nuwan Perera"});
CREATE (:User {id: "u2", username: "kamal_fernando", name: "Kamal Fernando"});
CREATE (:User {id: "u3", username: "ayesha_silva", name: "Ayesha Silva"});

MATCH (u1:User {id: "u1"}), (u2:User {id: "u2"})
CREATE (u1)-[:FRIENDS_WITH]->(u2);

MATCH (u1:User {id: "u1"})
CREATE (p:Post {id: "p1", content: "Exploring Ella this weekend!", created_at: datetime("2024-01-01T10:00:00Z")})
CREATE (u1)-[:POSTED]->(p);

MATCH (p:Post {id: "p1"}), (u2:User {id: "u2"})
CREATE (u2)-[:COMMENTED {content: "Sounds fun! Don’t forget to try the zipline!", created_at: datetime("2024-01-01T11:00:00Z")}]->(p);