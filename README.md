# README: Wonderland Elections Database Project
# Contact Info: jmule2@umbc.edu

## Project Overview
This project provides a database for managing election-related data for the Wonderland Elections Department. It handles voter registrations, ballots, and votes, while ensuring data integrity and supporting various operations and queries.

## Setup Instructions

### Prerequisites
**Software Required**:
- MySQL Server installed and running.
- MySQL Workbench or any preferred MySQL client.
- Python environment with Jupyter Notebook.
- Required Python packages: `ipython-sql`, `pymysql`, and `mysql-connector-python`.

### Running the Project

#### Start Your MySQL Server:
1. Open MySQL Workbench or your preferred MySQL client.
2. Start your server and ensure it is accessible.

#### Open the Jupyter Notebook:
1. Open the `Notebook_Example.ipynb` file.
2. Follow the notebook’s instructions step-by-step to:
   - Connect to the database.
   - Drop, create, and load tables using the integrated SQL scripts.

#### Integrated SQL Files:
- The following scripts are incorporated directly into the notebook:
  - `queryAll.sql`: Contains the queries for requirements B.1 to B.10.
  - `transaction.sql`: Implements transactional support for operation A.4.
- These are executed within dedicated notebook cells.

#### Execute the Notebook:
1. Run each cell in the notebook sequentially.
2. The notebook covers all required functionalities, including:
   - Database setup.
   - Activities like voter registration and casting votes.
   - Reports and queries for election analysis.

## Notes
- Ensure your MySQL server credentials (username, password) match those in the connection setup cell in the notebook.
- The queries and transactions are implemented using MySQL scripting variables (`@x`, `@y`) where user inputs are needed.
- Follow the notebook closely to execute all features correctly.

## Known Limitations
- The project uses Cartesian coordinates for distance calculations, approximating one unit as one mile.
- While functional, the project has not been tested for large-scale datasets or high-concurrency scenarios.
