#!/bin/bash
#SBATCH --job-name=HelloJob          # Job name
#SBATCH --partition=single           # Partition (queue) name
#SBATCH --nodes=1                    # Number of nodes
#SBATCH --ntasks=1                   # Number of tasks (processes)
#SBATCH --cpus-per-task=1            # Number of CPU cores per task
#SBATCH --mem=1G                     # Total memory per node
#SBATCH --time=00:01:00              # Time limit (hh:mm:ss)
#SBATCH --output=drought_output_%j.log # Standard output and error log

# Load the Python module
module load python/3.10.5

# Navigate to the directory containing the script
cd $HOME/AI_Climate

# Execute the Python script
python drought_detection.ipynb