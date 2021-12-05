from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

app = FastAPI()

@app.get("/get")
def root():
    return {"Hello": "World"}

app.mount("/", StaticFiles(directory="static", html=True), name="static")
