# TODO Thesis last 3 weeks

## Reviewing
- Get feedback from Lukas
- Let Giorgia read

## Writing
- discussing the reward functions for RL agents in wholesale?
- moving the reward functions into a separate subchapter
- learning from historical data describing the three stages (bandit arm, discrete preselected actions, continuous
  actions)
- results --> have I answered the research question? No, no success. But I have built a good baseline for future woork. 

## Coding
- try bandit style: agent just learns what price to bid, not how much.
- try some preprocessing variants 
- "walk backwards" from bandit to continuous action space
- try with more input types / preprocess better
- clean up WholesaleObservationSpace vs simply passing the environment (text l 1944 )

- always bidding the same in all market slots? Not normal? "asking for large volumne"

## DONE

- draw.io graphic on wholesale components
- Send to Peter and Christian
- what about the printing? call the printing service




\begin{markdown}
    %TODO turn into text after exam in july
    #### SOME NOTES
    - large part is both the choosing of the input and how to normalize it so the agent can work with it.
    - framework allows passing agent anything (the entire env) and then the individual agent can select and preprocess
    as it sees fit
    - utility functions hold cross-agent-impl preprocessing tools
    - started with offline learning to increase development turnaround rate. Simulation assumes the agent doesn't
    influence the prices of the market, clearing is just dependent on the action of the agent and the market price that
    is recorded.
    - tried intuitive agent impl but didnt work: some environment data input and output is the direct action
    - next tried output action being mapped: relative to forecast / current market prices > didn't work
    - next tried simple "two armed bandit": random action or on spot like the prediction with generous money offering.
    - >> worked after a few hundred steps

%NOTES AFTER IMPROVING ON DEMAND PREDICTOR

- need to solve the multiple \ac{MDP} for one agent problem
- no off the shelf algorithms that do continuous multi agent mdp stuff
- applying \ac{NAF} / \ac{DDPG} to problem possible. But may need to rewrite \ac{NAF} agent myself. Take stuff from
Keras though.
- doing a simple "always order demand prediction" baseline should be helpful
\

\end{markdown}
