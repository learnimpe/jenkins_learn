
from src.main import Learn


def test_learn():
    assert Learn(2, 2).fun() == 4


def test_ll():
    assert Learn(3, 2).fun() == 5