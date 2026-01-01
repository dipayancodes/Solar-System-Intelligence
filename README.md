# Solar System Intelligence Engine

A real-time data science system that combines astrodynamics calculations, API integration, and time-series forecasting to provide comprehensive monitoring and prediction of planetary events, surface conditions, and space weather phenomena.

## Features

- **High-Precision Astronomical Calculations**: Uses NASA JPL ephemeris data with Skyfield library
- **Real-Time Event Detection**: Automatically detects conjunctions, oppositions, retrograde motion, and orbital extremes
- **External Data Integration**: Connects to NASA Mars 2020 and NOAA Space Weather APIs
- **Predictive Analytics**: Forecasts future astronomical events up to 365 days
- **Interactive Dashboard**: Real-time visualization of solar system status
- **Performance Optimized**: Sub-second response times with Redis caching

## Quick Start

### Prerequisites

- Python 3.8 or higher
- Redis server (for caching)
- Internet connection (for ephemeris data and external APIs)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd solar-system-intelligence
```

2. Set up the development environment:
```bash
make setup
```

3. Edit the `.env` file with your configuration preferences.

4. Initialize the application:
```bash
python -m solar_system_intelligence.main
```

### Running the Services

Start the API server:
```bash
make run-api
```

Start the dashboard (in a separate terminal):
```bash
make run-dashboard
```

## Project Structure

```
solar_system_intelligence/
├── calculations/          # Astronomical computation engine
├── events/               # Event detection algorithms
├── data/                 # External API integration and caching
├── forecasting/          # Prediction and simulation engine
├── api/                  # REST API and WebSocket endpoints
├── dashboard/            # Streamlit web interface
├── utils/                # Logging, error handling, utilities
├── config.py             # Configuration management
└── main.py              # Application entry point
```

## Configuration

The application uses environment variables for configuration. Copy `.env.example` to `.env` and modify as needed:

- **API Settings**: Host, port, and performance parameters
- **Cache Settings**: Redis connection and caching behavior
- **External APIs**: NASA and NOAA service endpoints
- **Performance**: Timeout and concurrency limits
- **Data Storage**: Database and file storage configuration

## Development

### Running Tests

```bash
make test
```

### Code Quality

The project uses:
- **Black** for code formatting
- **Flake8** for linting
- **MyPy** for type checking
- **Pytest** for testing
- **Hypothesis** for property-based testing

### Adding New Features

1. Follow the modular architecture
2. Add appropriate logging and error handling
3. Write both unit tests and property-based tests
4. Update documentation

## API Documentation

Once the API server is running, visit:
- **Interactive API Docs**: http://localhost:8000/docs
- **ReDoc Documentation**: http://localhost:8000/redoc

## Dashboard

The Streamlit dashboard provides:
- Real-time solar system visualization
- Planetary position and motion tracking
- Event alerts and notifications
- Mars weather conditions
- Space weather monitoring

Access at: http://localhost:8501

## Performance

The system is designed for:
- **Query Response**: < 100ms for coordinate calculations
- **Dashboard Loading**: < 3 seconds
- **Concurrent Users**: Up to 50 simultaneous users
- **Uptime**: 99% availability target

## License

[Add your license information here]

## Contributing

[Add contribution guidelines here]