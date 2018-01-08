# Deep reinforcement learning (speech)
Deep reinforcement learning is RF which employs neural networks to approximate the function that you want to learn.

There are three ways of learning in RF:

-	learning policies (learning the next action)
-	value functions (measures the utility of states and possible future states)
-	models (predict next states and rewards)

Reinforcement learning: The Environment samples input $x_t \sim P(x_t \mid x_{t-1},t_{t-1})$

Differences to supervised learning:
- delayed effects of learning due to a stateful system.
- no access to function you're trying to access/learn. You need to query it
    - compare this to a image recognition task where the input and output data is all there, you *just* need to understand it. In RL environments you don't know the best action (policy), you don't know the usefulness of different states (value) and you don't know the way the environment reacts to your actions (transition model and noise)

Word of advice: Often, RL is overkill. The operations research science community has often applied RL for their problems with the basic *policy iteration* and *value iteration* on real problems. This often

> Basic object in RFL is MDP: $(\mathcal{S},\mathcal{A},\mathcal{P})$

- S: **state space**
- A: **action space**
- $P(r,s' \mid s,a)$: transition + reward distribution
- $\mu$: Initial state distribution (world start state, $s_0$)

## Episodic setting

- each episode, initial state is sampled from $\mu$ and then the agent acts until a terminal state (Game Over?) is reached
- similar to powerTAC, where each simulation can be seen as a (long) episode
    - speedup of simulation possible by running everything on localhost and reducing game tick to 1s? TODO investigate

## policies

Policies can either be deterministic ($a=\pi(s)$) or stochastic ($a \sim \pi(a\mid s)$).

## Using neural networks to perform RF learning

How do you use NN in RF? Well, basically, the NN is your parameterized policy and the parameters $\theta$ are all the weights in your NN.

*This is where my observation algorithm can kick in! Letting an agent play against many other agents. After N rounds, the game is paused and the agent performance is evaluated against the other agents in the game. The agent that performed best in this subperiod is used as a rolemodel. The agent now uses supervised learning methods to adapt its weights $\theta$ using backpropagation methods by using the decisions of the role model as labeled test data. It basically learns to "think more like the cool kid". This of course doesn't overwrite the knowledge of the agent, it simply adapts its behavior to be more like that of the role model, allowing it to behave similar in similar environments. In theory, this approach should reduce the complexity of the policy gradient search.*

*This is where my observation algorithm can kick in! You train several RF agents in the state space (in the powerTAC simulation as separate agents) and let them learn. Your utility function is built up of many separate terms (e.g. total profit, market share, sum of balancing penalties, ...). After N rounds (100, 1000, ?) the game is paused, the agents weights $\theta$ are copied into a separate space and evaluated against a benchmark decision set. Those agents that do "best" in distinct terms may be used as a supervised example set. Now, the last 100, 1000 rounds of the game environment are presented to each agent and the decisions of the "rolemodel" agent (the one that performed best in this specific term) *
