# Book Lending Library Application

A Ruby on Rails application for managing books and tracking their lending history. Users can create, view, update, and delete books, as well as borrow and return books. The application also records borrowing history, including who borrowed a book and when it was returned.

---

## Features

- **Manage Books**: Create, view, edit, and delete books.
- **Borrow and Return Books**: Borrow books by entering a borrower's name and return them with a single click.
- **Borrowing History**: View the borrowing history of a specific book or borrower.
- **No Authentication**: No login or authentication is required to use the application.
- **Responsive Design**: Styled with Tailwind CSS for a modern and responsive user interface.

---

## Prerequisites

Before running the application, ensure you have the following installed:

- **Ruby**: Version 3.2 or higher.
- **Rails**: Version 8.0.0 or higher.
- **SQLite3**: The default database for development.
- **Node.js**: Required for Tailwind CSS.

---

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/MJCappella/library_app.git
   cd library_app
   ```

2. **Install Dependencies**:
   Install Ruby gems and JavaScript dependencies:
   ```bash
   bundle install
   yarn install
   ```

3. **Set Up the Database**:
   Create and migrate the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. **Build Tailwind CSS**:
   Tailwind CSS is used for styling. Build the CSS:
   ```bash
   rails tailwindcss:build
   ```

5. **Start the Rails Server**:
   Run the application locally:
   ```bash
   rails server
   ```

6. **Access the Application**:
   Open your browser and visit:
   ```
   http://localhost:3000/books
   ```

---

## Running Tests

The application includes model and controller tests. To run the test suite:

```bash
rails test
```

### Test Coverage
- **Model Tests**: Validates the behavior of the `Book` model.
- **Controller Tests**: Ensures the `BooksController` actions work as expected.

---

## Application Structure

### Models
- **Book**: Represents a book in the library.
  - Attributes: `title`, `author`, `published_year`, `status`.
- **Lending**: Represents the borrowing history of a book.
  - Attributes: `book_id`, `borrower_name`, `borrowed_at`, `returned_at`.

### Controllers
- **BooksController**: Handles CRUD operations for books and borrowing/returning functionality.

### Views
- **Books**: Views for listing, showing, creating, and editing books.
- **Lending History**: Displayed on the book show page.

### Routes
- **Books**: RESTful routes for managing books, including `borrow` and `return` actions.

---

## Example Workflow

1. **Create a New Book**:
   - Visit `http://localhost:3000/books`.
   - Click on the `New Book` button. 
   - Fill in the book details and click "Create Book".
   - Navigate to the homepage to view your book.

2. **Borrow a Book**:
   - Go to the book's show page (`http://localhost:3000/books`).
   - Select a book of interest and click on the `show` action.
   - Enter the borrower's name and click "Borrow".

3. **Return a Book**:
   - On the book's show page, click "Return".

4. **View Borrowing History**:
   - The borrowing history is displayed on the book's show page.

---