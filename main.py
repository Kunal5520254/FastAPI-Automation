from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
def read_root():
    return {"name": "Dhananjay", "Location": "Gurugram"}

@app.get("/{data}")
def read_data(data: str):
    return {"hi": data, "Location": "Gurugram"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
