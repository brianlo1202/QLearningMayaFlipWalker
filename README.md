# QLearningMayaFlipWalker

(See video of fully trained version)

Using QLearning artificial intelligence, a one legged creature learns to flip itself out of a stuck position and walk in a 3D world. Uses Autodesk Maya's Bullet Physics Engine. Algorithm based only on UC Berkeley's CS188 notes and coded from scratch in Python.

To run the final trained version:

Open the scene with the latest version in the "scenes" folder with Autodesk Maya 2018. 
Open all the scripts in the scripts folder and run all of them except for QLearning.py.
Run QLearning.py.

To train the walker yourself: (takes 3 hours)

Open the scene with the latest version in the "scenes" folder with Autodesk Maya 2018. 
Delete qVals.pkl in the "scripts" folder.
Open all the scripts in the scripts folder and run all of them except for QLearning.py.
In QLearning.py, set E to 1 and programTimeLimit to 3600 (runs for an hour).
Run QLearning.py.
In QLearning.py, set E to 0.5.
Run QLearning.py.
In QLearning.py, set E to 0.33.
Run QLearning.py.
In QLearning.py, set E to 0.0.
Run QLearning.py.

