# Solar System Intelligence Engine Makefile

.PHONY: help install dev-install test clean run-api run-dashboard setup

help:
	@echo "Available commands:"
	@echo "  setup        - Set up the development environment"
	@echo "  install      - Install production dependencies"
	@echo "  dev-install  - Install development dependencies"
	@echo "  test         - Run tests"
	@echo "  clean        - Clean up generated files"
	@echo "  run-api      - Run the FastAPI server"
	@echo "  run-dashboard - Run the Streamlit dashboard"

setup: install
	@echo "Setting up development environment..."
	@python -m pip install --upgrade pip
	@cp .env.example .env
	@mkdir -p logs ephemeris_data cache data
	@echo "Setup complete! Edit .env file as needed."

install:
	@echo "Installing dependencies..."
	@python -m pip install -r requirements.txt

dev-install: install
	@echo "Installing development dependencies..."
	@python -m pip install pytest pytest-cov hypothesis black flake8 mypy

test:
	@echo "Running tests..."
	@python -m pytest tests/ -v

clean:
	@echo "Cleaning up..."
	@find . -type f -name "*.pyc" -delete
	@find . -type d -name "__pycache__" -delete
	@rm -rf build/ dist/ *.egg-info/

run-api:
	@echo "Starting FastAPI server..."
	@uvicorn solar_system_intelligence.api.main:app --host 0.0.0.0 --port 8000 --reload

run-dashboard:
	@echo "Starting Streamlit dashboard..."
	@streamlit run solar_system_intelligence/dashboard/main.py --server.port 8501