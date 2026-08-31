# sap-rap-generated-travel-booking
# ABAP RESTful Application Programming Model – Managed Scenario

## 📌 Project Overview

This project demonstrates the development of an **OData service using the SAP ABAP RESTful Application Programming Model (RAP)** with a **Managed Scenario**.

The application is based on a travel booking use case. A custom database table is created to store booking information, which is then exposed through a CDS Root View Entity. RAP behavior definitions are used to enable **Create, Read, Update, and Delete (CRUD)** operations.

The service is published using **OData V2** and can be previewed as a Fiori Elements application.

## 🚀 Technologies Used

* SAP ABAP
* ABAP Development Tools (ADT) in Eclipse
* ABAP RESTful Application Programming Model (RAP)
* Core Data Services (CDS)
* OData V2
* Fiori Elements
* SAP HANA Database
* Managed Behavior Definition

## 🏗️ Project Architecture

```text
Database Table
      ↓
CDS Root View Entity
      ↓
Metadata Extension
      ↓
Behavior Definition
      ↓
Service Definition
      ↓
Service Binding
      ↓
OData V2 Service
      ↓
Fiori Elements Preview
```

## 📂 Main RAP Artifacts

| Artifact            | Purpose                                    |
| ------------------- | ------------------------------------------ |
| `ZJP_RAP_BOOK`      | Custom database table for booking data     |
| `ZI_RAP_BOOK`       | CDS Root View Entity                       |
| Metadata Extension  | Defines UI annotations and field positions |
| Behavior Definition | Enables CRUD operations                    |
| `ZUI_RAP_BOOK`      | Service Definition                         |
| Service Binding     | Publishes the service using OData V2       |
| `ZJP_BOOK_DATA`     | ABAP class used to populate sample data    |

## 🔹 Features

* Create a custom database table
* Populate the table with sample travel booking data
* Create a CDS Root View Entity
* Add UI annotations using Metadata Extension
* Implement a **Managed RAP Behavior Definition**
* Enable:

  * ✅ Create
  * ✅ Read
  * ✅ Update
  * ✅ Delete
* Create and expose an OData service
* Publish the service using OData V2
* Preview the application using Fiori Elements

## 🔄 CRUD Operations

The RAP application supports the following operations:

### Create

Create a new travel booking record through the Fiori Elements interface.

### Read

Display existing booking records from the CDS Root View Entity.

### Update

Modify an existing booking record and save the changes.

### Delete

Delete an existing booking record from the application.

## 🧩 RAP Components Explained

### 1. Database Table

A transparent database table is created to store travel booking information such as:

* Travel ID
* Booking ID
* Booking Date
* Customer ID
* Carrier ID
* Connection ID
* Flight Date
* Flight Price
* Currency Code

### 2. CDS Root View Entity

The database table is exposed through a **CDS Root View Entity**. This entity acts as the business object root for the RAP application.

### 3. Metadata Extension

UI annotations are added through a Metadata Extension to control:

* List report fields
* Object page fields
* Selection fields
* Field positions
* Header information

### 4. Managed Behavior Definition

A managed behavior definition is used to implement the business object behavior.

```abap
managed;

define behavior for zi_rap_book
persistent table zjp_rap_book
lock master
{
  create;
  update;
  delete;
}
```

In a managed scenario, the RAP framework handles much of the standard transactional processing.

### 5. Service Definition

The Service Definition specifies which CDS entity is exposed through the service.

```abap
@EndUserText.label: 'Service Definition for Booking CDS view'
define service ZUI_RAP_BOOK {
  expose zi_rap_book;
}
```

### 6. Service Binding

The Service Binding publishes the service using **OData V2** and allows the application to be previewed through a Fiori Elements interface.

## 📊 Expected Output

After publishing the service, the entity can be opened in the Fiori Elements preview.

The application allows users to:

```text
View Booking Records
       ↓
   ┌─────────┐
   │  READ   │
   └─────────┘
       ↓
Create / Edit / Delete
```

## 🎯 Learning Outcomes

Through this project, I learned:

* Fundamentals of the SAP RAP architecture
* Difference between CDS entities and database tables
* Creating CDS Root View Entities
* Using Metadata Extensions
* Creating Managed Behavior Definitions
* Implementing CRUD operations
* Creating Service Definitions
* Creating and publishing Service Bindings
* Working with OData V2
* Previewing RAP applications using Fiori Elements
* Developing RAP applications using ABAP Development Tools in Eclipse

## 🛠️ Development Environment

* SAP ABAP Development Tools (Eclipse)
* SAP HANA / ABAP environment
* SAP RAP Framework
* OData V2
* Fiori Elements

## 📚 Reference

Project implemented based on the RAP Managed Scenario tutorial from **Discovering ABAP**:

[ABAP RESTful Application Programming Model [2] – Managed Scenario](https://discoveringabap.com/2021/12/03/abap-restful-application-programming-model-2-working-example/?utm_source=chatgpt.com)

## 👩‍💻 Author

**Anjum Meher**

SAP ABAP | ABAP on HANA | ABAP RESTful Application Programming Model
