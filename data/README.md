# Data Folder

## Folders

* [Q=2](Q2/README.md)
* [Q=3](Q3/README.md)
* [Q=4](Q4/README.md)

## Extentions of files

* `*.toml` input parameters
* `*.dat` data (output) file

## Input Parameters

```txt
Q = 2
SystemSize = 32
SamplingNumber = 256
OutputFile = "L032.dat"
ThermalizationLoop = 10000
ObservationLoop = 100000
Temperatures = [0.978342657106511, ..., 1.4405822404398443]
```

* Q: Number of states of spins
* SamplingNumber: Number of samples
* ThermalizationLoop: Number of MCs for thermalization
* ObservationLoop: Number of MCs for observation
* Temperatures: A set of temperatures to be observed.

## Data


| Coloumns | Observable | Descrpition| Notes|
|--- | --- | --- | --- |
| 1 | Inverse temperature | |
| 2,4 | $U_\mathrm{low}$ and its error| Low temperature term |
| 5,7 | $U_\mathrm{high}$ and its error|High temperature term |
| 8,10 | $U_\mathrm{ie}$ and its error| Conventional definition obtained by improved estimator|
| 11,13 | $U_\mathrm{Ising_ie}$ and its error| Ising definition obtained by improved estimator|valid only for $Q=4$|
| 14,16 | $U_\mathrm{cross_ie}$ and its error| Cross definition obtained by improved estimator |valid only for $Q=4$|
| 17,19 | $U$ and its error| Conventional definition obtained by spins| 
| 20,22 | $U_\mathrm{Ising}$ and its error| Ising definition obtained by spins| valid only for $Q=4$|
| 23,25 | $U_\mathrm{cross}$ and its error| Cross definition obtained by spins| valid only for $Q=4$|
| 26,28 | $U_\mathrm{63}$ and its error| Higher order Binder parameter obtained by spins| exists only for $Q=3$|
| 29,31 | $U_\mathrm{63ie}$ and its error|  Higher order Binder parameter obtained by improved estimator| exists only for $Q=3$|

