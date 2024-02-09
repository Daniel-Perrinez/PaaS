from app import app

def test_index_route():
    """
    GIVEN a Flask application configured for testing
    WHEN the '/' page is requested (GET)
    THEN check that the response is valid
    """
    tester = app.test_client()
    response = tester.get('/')
    assert response.status_code == 200