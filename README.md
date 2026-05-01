# 🐍 Python for AI/ML — AIOps Edition

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-1.26%2B-013243?logo=numpy&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.x-150458?logo=pandas&logoColor=white)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-coming%20soon-F7931E?logo=scikitlearn&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

A structured, hands-on learning repository for mastering Python fundamentals and the core data science stack — purpose-built for **AIOps practitioners** who want to apply ML/AI techniques to IT operations, monitoring, anomaly detection, and automation workflows.

---

## 📌 Why This Repository?

AIOps demands more than just scripting knowledge. This repository bridges the gap between Python basics and production-ready data science skills, using real-world AIOps scenarios like:

- Log parsing and event correlation
- Time-series analysis of infrastructure metrics
- Anomaly detection in server and application data
- Automating operational insights with ML

Whether you're an SRE, DevOps engineer, or platform engineer stepping into AI/ML — this is your guided path.

---

## 📁 Repository Structure

```
python-for-ai-ml/
│
├── 📂 1-python-foundation/
│   ├── 1-python-basics-conditionals-loops.ipynb
│   ├── 2.1-lists-loops-methods-continue-break.ipynb
│   ├── 2.2-lists-methods-sorting-slicing.ipynb
│   ├── 3-tuple-concatenation-lists.ipynb
│   ├── 4-functions.ipynb
│   ├── 5-oops-itserverclass.ipynb
│   ├── 6-stringmethods-logparsing.ipynb
│   ├── 7.1-dictionaries-loops-functions.ipynb
│   ├── 7.2-dictonaries-methods.ipynb
│   ├── 8-list-comprehension.ipynb
│   ├── 9-lists-functions-dictionaries-combine.ipynb
│   ├── 10-file-Handling.ipynb
│   ├── 11-exception-handling.ipynb
│   └── 12-modules.ipynb
│
├── 📂 2-numpy/
│   ├── 1-numpy-arrays.ipynb
│   ├── 2-numpy-indexing-slicing.ipynb
│   ├── 3-numpy-mathoperations-aggregations.ipynb
│   ├── 4-numpy-booleanlogic-filtering.ipynb
│   ├── 5-numpy-reshaping-dimensions.ipynb
│   ├── 6-numpy-broadcasting.ipynb
│   ├── 7-numpy-statistics.ipynb
│   ├── 8-numpy-synthetic-it-metrics.ipynb
│   └── 9-numpy-anomaly-threshold-logic.ipynb
│
├── 📂 3-pandas/
│   ├── 1-pandas-series-dataframe.ipynb
│   ├── 2-pandas-loading-inspection.ipynb
│   ├── 3-pandas-filtering-selection.ipynb
│   ├── 4-pandas-cleaning-missing.ipynb
│   ├── 5-groupby-aggregation.ipynb
│   ├── 6-pandas-merge-join.ipynb
│   ├── app_logs.csv
│   ├── incidents.csv
│   └── server_metrics.csv
│
└── 📂 4-scikit-learn/              # 🚧 Coming Soon
    └── ...
```

---

## 📚 Module Breakdown

### 🔹 1. Python Foundation

Build a solid Python base with patterns commonly used in AIOps tooling, scripting, and automation — all grounded in IT operations contexts.

| Notebook | Topics Covered | AIOps Context |
|---|---|---|
| `1-python-basics-conditionals-loops` | Variables, conditionals, loops | Alert routing and threshold checks |
| `2.1-lists-loops-methods-continue-break` | List traversal, loop control | Iterating over log entries |
| `2.2-lists-methods-sorting-slicing` | Sorting, slicing, list methods | Ranking incidents by severity |
| `3-tuple-concatenation-lists` | Tuples, immutability, combining collections | Immutable config records |
| `4-functions` | Function definition, scope, return values | Reusable monitoring utilities |
| `5-oops-itserverclass` | Classes, objects, inheritance | Modeling servers and services as objects |
| `6-stringmethods-logparsing` | String ops, regex, formatting | Parsing application and system logs |
| `7.1-dictionaries-loops-functions` | Dict iteration, functional patterns | Processing structured event data |
| `7.2-dictonaries-methods` | Dict methods, nested dicts | Managing config maps and metadata |
| `8-list-comprehension` | Comprehensions, filtering, transforms | Compact log filtering pipelines |
| `9-lists-functions-dictionaries-combine` | Combining data structures | Building incident summary reports |
| `10-file-Handling` | Reading/writing files, CSV, JSON | Loading log files and config dumps |
| `11-exception-handling` | Try/except, custom exceptions | Resilient pipelines that don't crash in prod |
| `12-modules` | Importing, `__init__`, packaging | Structuring reusable AIOps toolkits |

---

### 🔹 2. NumPy

Efficient numerical computing applied to raw telemetry, server metrics, and time-series operational data.

| Notebook | Topics Covered | AIOps Context |
|---|---|---|
| `1-numpy-arrays` | Array creation, dtypes, attributes | Storing metric snapshots as arrays |
| `2-numpy-indexing-slicing` | Indexing, slicing, fancy indexing | Extracting CPU/RAM time windows |
| `3-numpy-mathoperations-aggregations` | Arithmetic, sum, mean, min, max | Computing utilization statistics |
| `4-numpy-booleanlogic-filtering` | Boolean masks, dynamic thresholds | Anomaly detection on server metrics |
| `5-numpy-reshaping-dimensions` | Reshape, transpose, dimensions | Structuring multi-server metric matrices |
| `6-numpy-broadcasting` | Broadcasting, baselines, z-scores | Normalizing and comparing metrics per server |
| `7-numpy-statistics` | Moving averages, sliding correlations | CPU trend analysis and pattern detection |
| `8-numpy-synthetic-it-metrics` | Simulating CPU, RAM, disk, network data | Generating realistic test datasets |
| `9-numpy-anomaly-threshold-logic` | Static vs dynamic thresholds, consensus methods | Multi-method anomaly detection logic |

---

### 🔹 3. Pandas

Data wrangling with real-world operational datasets — application logs, server metrics, and incident records.

**Datasets used in this module:**

| File | Description |
|---|---|
| `app_logs.csv` | Application log events with timestamps, levels, and services |
| `server_metrics.csv` | CPU, memory, disk metrics with duplicates and missing values |
| `incidents.csv` | Incident records for cross-dataset correlation and reporting |

| Notebook | Topics Covered | AIOps Context |
|---|---|---|
| `1-pandas-series-dataframe` | Series, DataFrames, indexing | Core structures for tabular ops data |
| `2-pandas-loading-inspection` | read_csv, dtypes, info, describe | Loading and profiling log exports |
| `3-pandas-filtering-selection` | Boolean filters, loc, iloc, query | Isolating critical-severity events |
| `4-pandas-cleaning-missing` | Nulls, IQR outlier removal, category normalization | Cleaning inconsistent metric records |
| `5-groupby-aggregation` | groupby, agg, error code frequency | Finding frequent errors, excluding noise |
| `6-pandas-merge-join` | merge, join, full cross-dataset pipeline | Building a complete server reliability report |

---

### 🔹 4. Scikit-learn *(Coming Soon)*

The next module will cover supervised and unsupervised ML for AIOps, including:

- Anomaly detection with `IsolationForest` and `LocalOutlierFactor`
- Alert classification with decision trees and random forests
- Clustering services for topology grouping
- Root cause analysis with feature importance
- Model evaluation against operational SLAs

> ⭐ **Star this repo** to get notified when the Scikit-learn module drops!

---

## 🧭 Learning Path

```
1-python-foundation  ──▶  2-numpy  ──▶  3-pandas  ──▶  4-scikit-learn (🚧)
         │                    │               │                  │
   Scripting &            Numerical       Wrangling           ML Models
   Automation             Computing       Ops Data            for AIOps
```

Each module is grounded in **real AIOps datasets and scenarios** — no toy examples.

---

## 🚀 Getting Started

### Prerequisites

- Python 3.10 or higher
- Jupyter Notebook or JupyterLab
- `pip` or `conda`

### Installation

```bash
# Clone the repository
git clone https://github.com/raviadapa-ai/python-for-ai-ml.git
cd python-for-ai-ml

# Create a virtual environment (recommended)
python -m venv venv
source venv/bin/activate        # Linux/macOS
venv\Scripts\activate           # Windows

# Install dependencies
pip install -r requirements.txt

# Launch Jupyter
jupyter lab
```

### `requirements.txt`

```
numpy>=1.26
pandas>=2.0
matplotlib>=3.7
seaborn>=0.12
jupyterlab>=4.0
scikit-learn>=1.4    # for upcoming module
```

---

## 🤝 Contributing

Contributions are welcome! To add notebooks, fix issues, or propose new AIOps use cases:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-topic`)
3. Commit your changes (`git commit -m "Add: topic description"`)
4. Push and open a Pull Request

Please follow the existing notebook naming convention and include an AIOps-relevant example wherever possible.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙌 Acknowledgements

Inspired by the growing need for ML literacy in the SRE and platform engineering communities. Built for practitioners who live in terminals, dashboards, and incident bridges — and want AI to work *for* them.

---

<p align="center">Made with ❤️ for the AIOps community</p>
