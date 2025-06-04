// Import MongoDB client
const { MongoClient } = require('mongodb');

// Connection URI (replace with your MongoDB connection string if using Atlas)
// const uri = 'mongodb://localhost:27017';
const uri = "mongodb+srv://chirchirmeshack:W0NAm5AlOSYRDOMx@cluster001.ij2zmyc.mongodb.net/?retryWrites=true&w=majority&appName=Cluster001";



// Database and collection names
const dbName = 'movie_activity';
const collectionName = 'movies';

// Connect to the MongoDB server and perform operations
async function run() {
  const client = new MongoClient(uri);
  try {
    await client.connect();
    const db = client.db(dbName);
    const collection = db.collection(collectionName);

    // Insert three movie documents into the 'movies' collection
    await collection.insertMany([
      {
        title: "The Shawshank Redemption",
        director: "Frank Darabont",
        year: 1994,
        genre: ["Drama"]
      },
      {
        title: "The Godfather",
        director: "Francis Ford Coppola",
        year: 1972,
        genre: ["Crime", "Drama"]
      },
      {
        title: "The Dark Knight",
        director: "Christopher Nolan",
        year: 2008,
        genre: ["Action", "Crime", "Drama"]
      }
    ]);

    // Retrieve all documents from the 'movies' collection
    const movies = await collection.find().toArray();
    console.log(movies);
  } finally {
    await client.close();
  }
}

run().catch(console.dir);