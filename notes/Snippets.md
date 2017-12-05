## How machines learn in current research

The majority of machine learning focuses on **factored representations** of knowledge and information. This means that one usually handles vectors representing information pieces, made up of several dimensions with either continuous or discrete values. 

A prominant form to learn from examples is called **supervised learning** and it is the process of having a machine learn patterns by providing a (sometimes very large) set of input-output pairs.




---
*This post is based on the book "Artificial Intelligence, A Modern Approach" by Stuart Russel and Peter Norvig*

## hypothesis

A hypothesis is a constructed function that attempts to map inputs to correct outputs and must be selected from the hypothesis space.

## Generalization

A hypothesis generalizes well if it can categorize new, previously unseen examples well due to its experience with previous training examples.

In the case of reinforcement learning, it doesn't learn through examples but rather in an environment where a certain utility function defines the success. A good algorithm can then be considered good, if it generalizes to new environments and still achieves high utility. Great examples are the OpenAI locomotive papers.

![](http://i.gzn.jp/img/2017/07/11/locomotion-behaviours-in-rich-environment/00.jpg)

## Classification and Regression

Classification is matching the input to one of a finite set of classes. Regression asks the algorithm to output a continuous value.

## Consistent hypotheses

Are those that match ALL input examples with EXACT outputs. These are rare in environments with noise and random variables.


## Realizable problems
Are those for which a consistent hypothesis can be found.



## Information Gain
When selecting attributes to use for classification, an algorithm can look at different input attributes and determine the information gain by evaluating the reduction in entropy.

## Pruning helps against Overfitting

Pruning is the process of cutting away branches that provide little information gain. Using a significance test parameter, a tree tests for the each branching point if the split offers sufficient information gain. 



## Cross-validation and peeking

To evaluate if an algorithm performs well, one might first use the same data-set to verify the results. So in case of the use of a decision tree, one might train it with a set of 1000 examples and then verify against the same set. But this will be very bad in terms of true verification of the performance. An alternative and often applied approach is the method of splitting the dataset into a training and test set. The process then is an iterative two step process: 1. train on training set, 2. test on test set, repeat. 

This however causes problems if n, the number of examples, is low. An alternative is k-fold cross-validation: Performing k rounds with a rotating scheme of which examples are test and which training items. 

** The problem of peaking **

The most prevalent issue is the issue of peaking, which has also not been adressed at my university course in Data Science at the UTS in Sydney. The process is so dangerously intuitive, it is very commong:

1. you perform i.e. k-fold cross validation to train your model
2. you verify with the test set and see how you perform
3. you adjust parameters and reverify, checking if your model has improved
4. you repeat this process until you are happy with the performance

However, this process leads to a big issue: *Information of the test set has leaked into the learning algorithm*. What this means is that we are now not verifying our model against the test set but rather we are optimizing it for both the learning and test set. Hence, we are again prone to overfitting, which is exactly what we tried to get rid of. 

** The solution using validation sets**

To avoid this, the process should be a bit different:

1. Split the data into a training and a test set
