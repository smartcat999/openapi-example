# -*- coding:utf-8 -*-

import uvicorn
from fastapi import FastAPI

app = FastAPI(openapi_url="/openapi/v2")


@app.get("/")
def read_root():
    return {"Hello": "World"}


if __name__ == "__main__":
    uvicorn.run("server:app", host="0.0.0.0", port=8000, log_level="info", reload=True)