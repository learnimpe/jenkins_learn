
from src.main import Learn


def test_learn():
    assert Learn(2, 2).fun() == 4
