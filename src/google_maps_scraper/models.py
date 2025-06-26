"""
    Pydantic models for Google Maps scraper.
"""

from pydantic import BaseModel


class Location(BaseModel):
    title: str
    rating: str
    website: str
    url: str
