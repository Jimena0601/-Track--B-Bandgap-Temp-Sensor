# Bandgap Temperature Sensor

Repository for the open-source mixed-signal temperature sensor developed by our team as part of SSCS Chipathon 2026.

# Description

As part of this project, we aim to design and tape out a CMOS temperature sensor based on a PTAT (Proportional To Absolute Temperature) voltage generator and a first-order sigma-delta ADC architecture.

The proposed system generates a temperature-dependent voltage using bipolar junction transistor characteristics and converts the analog signal into a digital temperature code through oversampling and noise shaping techniques.

Our design includes:
- PTAT voltage generator
- Bandgap reference
- First-order sigma-delta modulator
- Integrator and comparator stages
- Digital decimation logic
- SPI communication interface
- Analog test nodes for debugging and characterization


The project will be implemented using open-source EDA tools and the GF180MCU technology node as part of the SSCS Chipathon 2026 framework.

# Team Members

- Jatin
- Phung Cheng Fei
- Jimena Regina Martínez Cano

Documentation
- [Proposal Slides: ] https://docs.google.com/presentation/d/10RPRgF1dIjjM-1NXyKvNgMu_pUJvOWBL/edit?usp=sharing&ouid=112013730550081722695&rtpof=true&sd=true
- Full schematic slildes: https://docs.google.com/presentation/d/1KEl6AScZBwLvk8Lb9h6sAGF0BZeuGhGU/edit?usp=sharing&ouid=112013730550081722695&rtpof=true&sd=true
- Schematic video: https://drive.google.com/file/d/1mXYUIqWa644d6U6pAOzVR0RPvlr_0ty-/view?usp=drive_link


