from setuptools import setup, find_packages

setup(
    name="solar-system-intelligence",
    version="0.1.0",
    description="Real-time Solar System Intelligence Engine",
    packages=find_packages(),
    python_requires=">=3.8",
    install_requires=[
        "skyfield>=1.48",
        "fastapi>=0.104.1",
        "redis>=5.0.1",
        "plotly>=5.17.0",
        "streamlit>=1.28.1",
        "uvicorn>=0.24.0",
        "pydantic>=2.5.0",
        "pydantic-settings>=2.1.0",
        "python-multipart>=0.0.6",
        "websockets>=12.0",
        "requests>=2.31.0",
        "numpy>=1.24.3",
        "pandas>=2.1.4",
    ],
)