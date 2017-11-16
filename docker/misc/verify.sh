printf "\n\ntest_run (test.test_solver.test_bayesian_optimization.TestBayesianOptimization) ... WARNING : Capacity of array S in DIRDoubleInsert reached. Increase maxdiv.
This means that there are a lot of hyperrectangles
with the same function value at the center. We
suggest to use our modification instead (Jones = 1)
ERROR
test_choose_next (test.test_solver.test_bayesian_optimization.TestBayesianOptimization) ... WARNING : Capacity of array S in DIRDoubleInsert reached. Increase maxdiv.
This means that there are a lot of hyperrectangles
with the same function value at the center. We
suggest to use our modification instead (Jones = 1)
ERROR

======================================================================
ERROR: test_run (test.test_solver.test_bayesian_optimization.TestBayesianOptimization)
----------------------------------------------------------------------
Traceback (most recent call last):
  File \"/home/RoBO/test/test_solver/test_bayesian_optimization.py\", line 30, in test_run
    inc, inc_val = self.solver.run(n_iters)
  File \"/usr/local/lib/python3.5/dist-packages/RoBO-0.2.1-py3.5.egg/robo/solver/bayesian_optimization.py\", line 167, in run
    new_x = self.choose_next(self.X, self.y, do_optimize)
  File \"/usr/local/lib/python3.5/dist-packages/RoBO-0.2.1-py3.5.egg/robo/solver/bayesian_optimization.py\", line 245, in choose_next
    x = self.maximize_func.maximize()
  File \"/usr/local/lib/python3.5/dist-packages/RoBO-0.2.1-py3.5.egg/robo/maximizers/direct.py\", line 58, in maximize
    maxf=self.n_func_evals)
  File \"/usr/local/lib/python3.5/dist-packages/DIRECT/__init__.py\", line 72, in solve
    raise Exception(res['message'])
Exception: Maximum number of levels has been reached.
-------------------- >> begin captured logging << --------------------
robo.solver.bayesian_optimization: INFO: Evaluate: [ 0.72701892]
robo.solver.bayesian_optimization: INFO: Configuration achieved a performance of 0.051538 in 0.000007 seconds
robo.solver.bayesian_optimization: INFO: Evaluate: [ 0.88782414]
robo.solver.bayesian_optimization: INFO: Configuration achieved a performance of 0.150408 in 0.000005 seconds
robo.solver.bayesian_optimization: INFO: Evaluate: [ 0.83791836]
robo.solver.bayesian_optimization: INFO: Configuration achieved a performance of 0.114189 in 0.000005 seconds
robo.solver.bayesian_optimization: INFO: Start iteration 3 ... 
robo.solver.bayesian_optimization: INFO: Train model...
robo.models.gaussian_process: DEBUG: GP Hyperparameters: [ 16.93267899  -5.99106197]
robo.solver.bayesian_optimization: INFO: Time to train the model: 0.022168
robo.solver.bayesian_optimization: INFO: Maximize acquisition function...
--------------------- >> end captured logging << ---------------------

======================================================================
ERROR: test_choose_next (test.test_solver.test_bayesian_optimization.TestBayesianOptimization)
----------------------------------------------------------------------
Traceback (most recent call last):
  File \"/home/RoBO/test/test_solver/test_bayesian_optimization.py\", line 46, in test_choose_next
    x_new = self.solver.choose_next(X, y)
  File \"/usr/local/lib/python3.5/dist-packages/RoBO-0.2.1-py3.5.egg/robo/solver/bayesian_optimization.py\", line 245, in choose_next
    x = self.maximize_func.maximize()
  File \"/usr/local/lib/python3.5/dist-packages/RoBO-0.2.1-py3.5.egg/robo/maximizers/direct.py\", line 58, in maximize
    maxf=self.n_func_evals)
  File \"/usr/local/lib/python3.5/dist-packages/DIRECT/__init__.py\", line 72, in solve
    raise Exception(res['message'])
Exception: Maximum number of levels has been reached.
-------------------- >> begin captured logging << --------------------
robo.solver.bayesian_optimization: INFO: Train model...
root: ERROR: Could not find a valid hyperparameter configuration! Use initial configuration
robo.models.gaussian_process: DEBUG: GP Hyperparameters: [ 0.         -6.90775528]
robo.solver.bayesian_optimization: INFO: Time to train the model: 0.001632
robo.solver.bayesian_optimization: INFO: Maximize acquisition function...
--------------------- >> end captured logging << ---------------------"
printf "\n\nStart verification of installation by calling the test procedure.\n"
printf "Two errors of the test are valid (see above). These errors are because the optimization method is not able to find a minimum.\n"
printf "Depending on your machine this could take some time.\n"
cd /home/RoBO/test/
nosetests -v

return 0
