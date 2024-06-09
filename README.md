- [App Workflow](#devops-monitoring)
  - [1. Environment variable setup](#1-environment-variable-setup)
  - [2. Backend setup](#2-backend-setup)
    - [1. Installing backend dependencies](#1-installing-backend-dependencies)
    - [2. Running database migration](#2-running-database-migration)
    - [3. Running backend](#3-running-backend)
  - [2. Frontend setup](#2-frontend-setup)
    - [1. Installing frontend dependencies](#1-installing-frontend-dependencies)
    - [2. Running frontend](#2-running-frontend)

---

You need to have `node` and `npm` installed on your system. Node version should be 20 or more.

## 1. Environment variable setup

### 1. Backend
In the backend folder, there is an `.env.example`. Rename this to just `.env` and update `DATABASE_URL`.

> ***Note:** `DATABASE_URL` should be in this format `DATABASE_URL="postgresql://USERNAME:PASSWORD@HOSTNAME:PORT"`*.

### 2. Frontend

In the frontend folder, there is an `.env.example`. Rename this to just `.env` and update `VITE_BACKEND_URL`.

> ***Note:** `VITE_BACKEND_URL` is the Backend server URL*.

## 2. Backend setup

### 1. Installing backend dependencies

Navigate to backend folder and run the following:

```bash
npm install
```

### 2. Running database migration

When running for the first time, you need to run database migrations so to do so navigate to backend folder and run the following:

```bash
npx prisma migrate deploy
```

### 3. Running backend

Once the dependencies are installed then run the following:

```bash
npm run start
```

This will start the backend server at port `5000`.

## 2. Frontend setup

### 1. Installing frontend dependencies

Navigate to frontend folder and run the following:

```bash
npm install
```

### 2. Running frontend

Once the dependencies are installed then run the following:

```bash
npm run dev -- --host
```

This will start the frontend server at port `4000`.

---
