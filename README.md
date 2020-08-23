# README

A single-page web application for comparing average word frequencies across folders of documents in order to facilitate empirical analysis, built using Rails 6, JavaScript and PostgreSQL.

The user initiates a comparison by selecting an arbitrary number of folders from the library they have created and inputting a search term. The application computes and visualizes the average frequency with which the search term appears in the documents contained in each folder. The application exploits the built-in full-text search functionality of the PostgresQL RDBMS, and supports stemming. Visualization of the resulting data is achieved by means of the Google Charts API.

Once a folder has been created, the user can populate it with documents by uploading a file in PDF format, or providing the URL for a webpage from which the text of the document will be scraped. A method in the Document model validates the format of the uploaded file by examining the Content-Type entity header. Further validations ensure the presence of a document title and the presence of either a PDF file or a URL. The application utilizes Ajax to dynamically render newly created database records or errors thrown by the model validations without needing to fetch the full page data from the server.
