import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'Who coined the term "AI"?',
    [
      'Alan Turing',
      'Elon Musk',
      'Mark Zuckerberg',
      'John McCarthy',
    ],
  ),
  QuizQuestion('Which programming language is widely used in AI?', [
    'Python',
    'Java',
    'C++',
    'Ruby',
  ]),
  QuizQuestion(
    'What is the primary function of ChatGPT?',
    [
      'Natural language understanding and generation',
      'Image recognition',
      'Text summarization',
      'Speech synthesis',
    ],
  ),
  QuizQuestion(
    'What type of neural network architecture does ChatGPT use?',
    [
      'Transformer',
      'Convolutional Neural Network (CNN)',
      'Long Short-Term Memory (LSTM)',
      'Recursive Neural Network (RNN)',
    ],
  ),
  QuizQuestion(
    'How does ChatGPT generate responses?',
    [
      'By learning patterns from large datasets',
      'By random selection from a set of phrases',
      'By copying responses from a database',
      'By retrieving pre-defined templates',
    ],
  ),
  QuizQuestion(
    'What is the maximum context window for ChatGPT responses?',
    [
      '512 tokens',
      '1024 tokens',
      'Unlimited tokens',
      '100 tokens',
    ],
  ),
  QuizQuestion(
    'Which of the following is a potential ethical concern related to ChatGPT?',
    [
      'Bias in generated responses',
      'Limitations in computational resources',
      'Lack of interpretability in model decisions',
      'Difficulty in fine-tuning for specific tasks',
    ],
  ),
  QuizQuestion(
    'How does ChatGPT handle context in conversations?',
    [
      'By utilizing attention mechanisms',
      'By applying reinforcement learning',
      'By memorizing previous interactions',
      'By analyzing semantic meaning',
    ],
  ),
  QuizQuestion(
    'In what year was ChatGPT first introduced?',
    [
      '2020',
      '2021',
      '2012',
      '2016',
    ],
  ),
  QuizQuestion(
    'What is the significance of adversarial training in the context of deep learning?',
    [
      'It improves model robustness against adversarial attacks',
      'It accelerates model training convergence',
      'It enhances model interpretability',
      'It helps in model compression',
    ],
  ),
];