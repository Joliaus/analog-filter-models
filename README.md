# Analog Filter Models for Synthesizers

## Project Overview

This project, completed during a technical internship at Maynooth University, Ireland, focuses on the design, simulation, and analysis of analog filters used in synthesizers. By creating digital models of famous analog filters, this project helps musicians and engineers explore new sound designs and analyze existing ones using simulation tools like MATLAB, LTspice, and LiveSPICE.

Throughout the project, three types of filters were studied:
- **Linear Filters**: Filters with a linear frequency response, such as low-pass, high-pass, and bandpass filters.
- **Non-linear Filters**: Filters that introduce non-linearities, such as the Moog Ladder Filter and Buchla Lowpass Gate.
- **State-variable Filters**: Filters that can simultaneously control multiple filter types (low-pass, high-pass, and bandpass) with a single circuit.

## Objectives

- Create digital models of famous analog synthesizer filters.
- Compare these models with real hardware versions to validate the digital simulations.
- Use simulation tools like MATLAB, LTspice, and LiveSPICE to analyze and improve existing analog filter designs.
- Develop new hybrid filter designs and simulate them before physically constructing them with hardware components.
- Make these filter models available for the global music and research communities.

## Tools and Software

### MATLAB
MATLAB is a high-level programming language used for numerical computations. It was used for initial simulations of analog filters, particularly for basic designs like low-pass filters and various resonant circuits. MATLAB was particularly useful for the following filter types:
- Bandpass filters (4th and 8th order)
- Chebyshev inverse filters
- High-pass filters
- Bessel filters (6th order)
- Moog Ladder Filters (4th order)

### LTspice
LTspice is a powerful simulation tool based on SPICE, widely used in the electronics industry for circuit simulation. LTspice was used for more complex analog filter simulations, including:
- Low-pass, high-pass, and bandpass filters (various orders)
- Sallen-Key filters
- Moog and Buchla low-pass filters
- Biquad filters
- State-variable filters

### LiveSPICE
LiveSPICE is a real-time simulation tool for audio circuits, specifically designed for SPICE-based simulations. It was used to simulate and test state-variable filters, including the development of new hybrid designs that could be further tested for real-world applications.

### Kushview Element
Element is a modular VST host application used to test the audio effects created with LiveSPICE. It integrates with LiveSPICE's VST plugin and was essential for testing the audio response of the filters in real-time.

## Installation Instructions

To set up the necessary environment for using the filter models in this project, follow these steps:

### Prerequisites:
- MATLAB (for filter design and basic simulation)
- LTspice (for detailed analog filter simulation)
- LiveSPICE (for real-time audio simulation)
- Kushview Element (for VST hosting and audio testing)

### Installation Steps:
1. **Install MATLAB**:
   - Ensure you have a valid license for MATLAB.
   - Download and install MATLAB from the official MathWorks website: [MathWorks - MATLAB](https://www.mathworks.com/products/matlab.html).

2. **Install LTspice**:
   - Download LTspice from the official Analog Devices website: [LTspice Download](https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html).
   
3. **Install LiveSPICE**:
   - Download LiveSPICE from the official website: [LiveSPICE](http://www.livespice.org/).

4. **Install Kushview Element**:
   - Download Element from the Kushview website: [Kushview Element](https://kushview.net/element/).

5. **Clone the GitHub Repository**:
   - Clone this repository to your local machine:
     ```bash
     git clone https://github.com/your-username/analog-filter-models.git
     ```
   - This will create a local copy of the repository on your computer.

6. **Set Up Filters**:
   - Place the filter design files in the appropriate directories as specified in the documentation of each tool (MATLAB, LTspice, and LiveSPICE).

## Usage

### Running Simulations in MATLAB:
1. Navigate to the MATLAB script directory.
2. Open MATLAB and run the provided `.m` scripts to simulate the filters.
3. Adjust the filter parameters such as frequency cutoff and resonance to explore different filter characteristics.

### Running Simulations in LTspice:
1. Open LTspice and load the `.asc` schematic files for the desired filter.
2. Run the simulation and analyze the frequency response.
3. Use the LTspice built-in tools for further analysis.

### Running Filters in LiveSPICE:
1. Open LiveSPICE and load the state-variable filter models.
2. Use the VST plugin for real-time simulation and connect it to an audio input source (e.g., guitar or synthesizer).
3. Use Kushview Element to host the VST plugin and process the audio in real time.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
