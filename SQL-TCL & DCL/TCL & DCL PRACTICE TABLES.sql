-----> TCL PRACTICE TABLE <-----
CREATE TABLE customer_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    total_amount DECIMAL(10,2),
    order_status VARCHAR(50)
);

INSERT INTO customer_orders VALUES
(101, 'Ravi', 'Laptop', 1, 55000, 'Pending'),
(102, 'Priya', 'Mobile', 2, 40000, 'Pending'),
(103, 'Kiran', 'Headphones', 1, 3000, 'Pending'),
(104, 'Sneha', 'Keyboard', 1, 1500, 'Pending'),
(105, 'Arjun', 'Monitor', 1, 12000, 'Pending');

-----> DCL PRACTICE TABLE <-----
CREATE TABLE employee_records (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employee_records VALUES
(1, 'Rahul', 'IT', 65000),
(2, 'Sneha', 'HR', 45000),
(3, 'Arjun', 'Finance', 70000),
(4, 'Keerthi', 'Admin', 40000),
(5, 'Varun', 'Testing', 50000);