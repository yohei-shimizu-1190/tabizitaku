{
  const question = document.getElementById('question');
  const choices = document.getElementById('choices');
  const btn = document.getElementById('btn');
  const result = document.getElementById('result');
  const scoreLabel = document.querySelector('#result h3')

  const quizSet = shuffle([
    { q: 'Q.現在、世界遺産が存在しない日本の地方はどこ?', c: ['四国地方', '中部地方', '東北地方', '中国地方', '九州地方'] },
    { q: 'Q.青森県と秋田県にまたがる、ブナの原生林で有名な世界遺産は何？', c: ['白神山地', '紀伊山地', '青山山地'] },
    { q: 'Q.白川郷や五箇山で見られる、勾配のきつい茅葺（かやぶき）屋根のことを何という？', c: ['合掌造り', '急斜造り', '落雪造り'] },
    { q: 'Q.栃木県の世界遺産「日光東照宮」に祀られている戦国武将は誰？', c: ['徳川家康', '平清盛', '織田信長'] },
    { q: 'Q.次の内、自然遺産ではないものはどれ？', c: ['富士山', '知床', '小笠原諸島', '白神山地', '屋久島'] },
    { q: 'Q.日本にある世界遺産の数はいくつ？', c: ['23', '19', '15'] },
    { q: 'Q.国立西洋美術館本館を設計したスイス生まれの建築家は誰？', c: ['ル・コルビュジェ', 'ミース・ファン・デル・ローエ', 'フランク・ロイド・ライト'] },
  ]);
  let currentNum = 0;
  let isAnswered;
  let score = 0;

  function shuffle(arr) {
    for (let i = arr.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [arr[j], arr[i]] = [arr[i], arr[j]];
    }
    return arr;
  }

  function checkAnswer(li) {
    if (isAnswered) {
      return;
    }
    isAnswered = true;

    if (li.textContent === quizSet[currentNum].c[0]) {
      li.classList.add('correct');
      score++;
    } else {
      li.classList.add('wrong');
    }

    btn.classList.remove('disabled')
  }

  function setQuiz() {
    isAnswered = false;
    question.textContent = quizSet[currentNum].q;

    while (choices.firstChild) {
      choices.removeChild(choices.firstChild);
    }
    const shuffledChoices = shuffle([...quizSet[currentNum].c]);
    shuffledChoices.forEach(choice => {
      const li = document.createElement('li');
      li.textContent = choice;
      li.addEventListener('click', () => {
        checkAnswer(li);
      });
      choices.appendChild(li);
    });

    if (currentNum === quizSet.length - 1) {
      btn.textContent = '結果を見る';
    }
  }

  setQuiz();

  btn.addEventListener('click', () => {
    if (btn.classList.contains('disabled')) {
      return;
    }
    btn.classList.add('disabled');

    if (currentNum === quizSet.length - 1) {
      scoreLabel.textContent = `お疲れさまでした！ \n Score: ${score} / ${quizSet.length}`;
      result.classList.remove('hidden');
    } else {
      currentNum++;
      setQuiz();
    }
  });
}