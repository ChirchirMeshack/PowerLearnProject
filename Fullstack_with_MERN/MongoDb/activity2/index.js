const { MongoClient } = require('mongodb');
const dotenv = require('dotenv');
dotenv.config();

const uri = process.env.MONGO_URI;
console.log("MONGO_URI:", uri);

const dbName = 'activityDB';

async function run() {
    const client = new MongoClient(uri, { useUnifiedTopology: true });
    try {
        await client.connect();
        const db = client.db(dbName);

        // Activity 1: Embedded Orders in Customers Collection
        const customers = db.collection('customers');

        // Clean up previous data for repeatable runs (optional)
        await customers.deleteMany({});

        // Insert sample customers with embedded orders
        await customers.insertMany([
            {
                name: 'Alice',
                email: 'alice@example.com',
                orders: [
                    { orderId: 1, product: 'Book', amount: 20 },
                    { orderId: 2, product: 'Pen', amount: 5 }
                ]
            },
            {
                name: 'Bob',
                email: 'bob@example.com',
                orders: [
                    { orderId: 3, product: 'Notebook', amount: 15 }
                ]
            }
        ]);

        // Retrieve all customers and their orders
        const allCustomers = await customers.find({}).toArray();
        console.log('Activity 1: Customers with embedded orders:');
        console.log(allCustomers);

        // Activity 2: Users and Orders Collections with References
        const users = db.collection('users');
        const orders = db.collection('orders');

        // Clean up previous data for repeatable runs (optional)
        await users.deleteMany({});
        await orders.deleteMany({});

        // Insert sample users
        const userResult = await users.insertMany([
            { name: 'Charlie', email: 'charlie@example.com' },
            { name: 'Diana', email: 'diana@example.com' }
        ]);

        // Insert sample orders referencing users
        await orders.insertMany([
            { userId: userResult.insertedIds['0'], product: 'Laptop', amount: 1000 },
            { userId: userResult.insertedIds['0'], product: 'Mouse', amount: 25 },
            { userId: userResult.insertedIds['1'], product: 'Keyboard', amount: 50 }
        ]);

        // Fetch all orders for a specific user (e.g., Charlie)
        const charlie = await users.findOne({ name: 'Charlie' });
        const charlieOrders = await orders.find({ userId: charlie._id }).toArray();
        console.log('\nActivity 2: Orders for Charlie:');
        console.log(charlieOrders);

    } catch (err) {
        console.error("An error occurred:", err);
    } finally {
        await client.close();
    }
}

run().catch(console.dir);