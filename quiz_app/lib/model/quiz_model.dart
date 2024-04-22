class QuizModel {
  const QuizModel(this.question, this.answer);

  final String question;
  final bool answer;
}

const q1 = QuizModel('Кыргызстанда 7 область бар', true);
const q2 = QuizModel('Дүйнөдө 3 материк бар', false);
const q3 = QuizModel('Кыргызстан эгемендүү өлкө', true);
const q4 = QuizModel('Эң тез жүргөн машина көк жигули', false);
const q5 = QuizModel('Fluter менен приложения жасаса болобу', true);
const q6 = QuizModel('Португалия дүйнөнүн чемпиону', false);

List<QuizModel> suroolor = [q1, q2, q3, q4, q5, q6];
