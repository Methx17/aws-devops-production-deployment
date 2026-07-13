const express = require('express');

const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
    res.json({
        message: "Automatic Deployment Verified - Build #2",
        developer: "Methesh Shetty",
        status: "Running Successfully",
        timestamp: new Date()
    });
});

app.get('/health', (req, res) => {
    res.json({
        status: "Healthy"
    });
});

app.get('/users', (req, res) => {
    res.json([
        {
            id: 1,
            name: "John"
        },
        {
            id: 2,
            name: "David"
        },
        {
            id: 3,
            name: "Emma"
        }
    ]);
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
