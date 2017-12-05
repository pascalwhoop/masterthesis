## Master Thesis discussion

The general topic: **AI learning**

There are 3 main types of learning that are agreed upon in the literature

- Supervised learning
	- a large corpus of training data used to train a model of (mostly logistic regression based) stacked neurons (aka Deep Learning)
	- often used to build a classifier or a other forms of recognition models (image recognition, voice recognition)
- Semi-Supervised learning / reinforcement learning
	- typically used to train models which learn how to walk or play Go (DeepMind)
	- more abstract goal defined 
	- no training set necessary
	- rewards paid out to agent based on `r(actions, environment, noise)`
	- harder to learn behavior but more resistent skills
- unsupervised learning
	- coll. dismissed simply as “clustering and some other things”
	- does not require labels for data
	- intends to build an “internal model of how the world works”

**I propose, based on human and animal behavior, to explore another form of learning: Social learning**

- animals and humans alike learn a significant amount through “observational learning”
- learning exhibits **network effects** such as parallel innovation, group creativity and teamwork
- children and puppies use their parents, older siblings and other social group idols as guides and learn from their behavior
	- if my larger brother burns his hands on the stove, I will not have to do the same mistake to learn it, but I can learn from him
	- when learning gymnastics or football, watching others perform actions let’s us understand how to perform them ourselves instead of having to go through trial and error ourselves

In supervised learning, by defining the search space for the hypothesis  $h_w(x)$, the NN might only find an approximation of the true underlying function. It might also suffer from a local maxima, depending on the learning rate and other parameters.

Generally, each individual NN can be seen as an enclosed system. Independent of whether it performs supervised, reinforcement or unsupervised learning, it might get *stuck* in a certain direction of *thinking*. Outside readjustments (through the training researcher) will have to be performed to get the network to continue imrproving it’s performance. 

What if **networks could observe other networks that are learning in the same realm but have a different history of learning**? Just as a child might get stuck with a certain task, so can a network. But observing a peer who has mastered the task, might help to understand how to solve the task yourself. 

The main difference between neural networks and humans is however the fact that humans can observe each other’s actions but not each other’s thought processes. A NN however could analyze both the input, action and result of another NN as well as the regression weights of the entire NN that has succeeded in the task. This might be another interesting way of advancing, however I believe the simple input, action observation is sufficient for an initial research. 

## Research question

*Can neural networks learn in a “social“ environment through observational learning and imitation of each other and human agents?*

Proposed results of the work:

-	develop a model to allow networks to observe each other’s inputs, outputs (and network states (the weights $w$))
	-	observe actions by immitation and actions where the NN would behave differently are used as learning examples
	- 	perform back propagation for different actions and compare results of new weights with previous
-	simulate a group of networks learning different tasks and observe their interactions
	-	supervised
	-	reinforcement
	-	(unsupervised)
-	conclude the results (whatever they may be)

Background / Research prior to own contribution will be based on:

- AI fundamentals
	- NN intro, RNN 
- observational / social learning theories from Psychology
- Practical implementations of NN with *TensorFlow* in Python
	- if required, basics of using the Google AI APIs as one GPU will most likely not be enough to train several networks on
