// Get all posts by user's friends
// Assuming user with ID 'u1'
db.posts.find({
    user_id: { $in: ["u2", "u3"] }
  });
  
  // Get all comments on a post
  db.comments.find({ post_id: "p1" });
  
  // Count posts by user
  db.posts.aggregate([
    { $group: { _id: "$user_id", post_count: { $sum: 1 } } }
  ]);
  
  // Get mutual friends of two users (u1, u2)
  const user1 = db.users.findOne({ _id: "u1" });
  const user2 = db.users.findOne({ _id: "u2" });
  const mutualFriends = user1.friends.filter(id => user2.friends.includes(id));
  
