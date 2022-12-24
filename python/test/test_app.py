import pytest
from hello import app

def test_request_example():
    response = app.test_client().get("/")
    assert b"<p>Hello, World!</p>" in response.data
