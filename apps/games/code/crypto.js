const s = selector => document.querySelector(selector)

const sAll = selector => document.querySelectorAll(selector)


const create = tag => document.createElement(tag)


/// Register Event's listeners 
const registerOn = (evt, el, behavior) =>
  el.addEventListener(evt, behavior)

const registerOnClick = (el, behavior) =>
  registerOn('click', el, behavior)


//alert("Thank You very much all my friends 💟 \n\nThanks Sololearn for COTD (15/5/2018)")

//alert("Don't forget to take a challenge 😅\n\nAnd take a look on my other codes it may like you 💖")
//alert("معلش الفراغ قاتلني قلت أتسلي 😂😂")


//Declaring & initializing the const variables
const keyboard = s('#keyboard');
const area1 = s('#area1');
const area2 = s('#area2');
const area3 = s('#area3');
const artCipher = s('#artCipher');
const artPlain = s('#artPlain');
const p = s('p')

const CODE = {
  0: 'Am0',
  1: 'Mh9',
  2: 'mR1',
  3: 'aT7',
  4: 'Rh6',
  5: 'Ym8',
  6: 'aH4',
  7: 'Ss5',
  8: 'sw2',
  9: 'En3',
  A: 'r1A',
  B: 'aiY',
  C: 'He7',
  D: 'm7l',
  E: 'eit',
  F: '50D',
  G: 'h9r',
  H: 'ayS',
  I: 's10',
  J: 'sd3',
  K: 'anh',
  L: 'Nd2',
  M: 'ams',
  N: 'Li1',
  O: 'l70',
  P: 'atN',
  Q: 'Iti',
  R: 'Tae',
  S: 'h5s',
  T: 'ytM',
  U: '1dn',
  V: '0Ai',
  W: '9sd',
  X: '7rs',
  Y: 'A6e',
  Z: 'M9L',
  a: 'mEr',
  b: 'ai7',
  c: 'Ry0',
  d: 'YaE',
  e: 'aDR',
  f: 'Srd',
  g: 'sD4',
  h: 'ETR',
  i: 're9',
  j: 'aTD',
  k: 'HmS',
  l: 'm0t',
  m: 'edM',
  n: 'Deh',
  o: 'hs7',
  p: 'aiy',
  q: '7s8',
  r: 'ds6',
  s: 'aRA',
  t: 'Nlh',
  u: 'a43',
  v: 'Lly',
  w: 'lHd',
  x: 'IdE',
  y: 'Ts0',
  z: 'heM',
  ' ': 'ysp',
  '@': 'ats',
  ',': 'Som',
  '.': 'fSs',
  '(': 'rth',
  ')': 'yth',
  '`': 'tth',
  '[': 'ran',
  ']': 'lnl',
  "'": '1nt',
  ';': 'smi',
  '/': 'slh',
  '-': 'das',
  '=': 'eys',
  '?': 'stM',
  '&': 'amr',
  '!': 'n0t',
  '\n': 'lin',
}

const COPIED = 'copied'


const encrypt = plain => {
  let cipher = '';
  plain.split('').forEach(c => (cipher += CODE[c]));
  return cipher;
}

const decrypt = cipher => {
  let plain = '';
  let found;

  cipher
    .split(' ')
    .join('')
    .match(/.{1,3}/g)
    .forEach(c => {
      found = false;

      for (let ch in CODE)
        if (c == CODE[ch]) {
          plain += ch
          found = true
          break
        }
      if (!found) plain += '*';
    })
  return plain
}


const copyToClipboard = str => {
  const el = create('textarea');

  el.value = str.split('<br>')
    .join('\n');
  el.setAttribute('readonly', '');
  el.style.position = 'absolute';
  el.style.left = '-100vw';

  document.body.appendChild(el)

  el.select()

  try {
    let copied = document.execCommand('copy')

    console.log(copied ? 'Copied to clipboard' : "Can't copy")

  } catch (e) {
    console.log('Oops, ' + e)
  }
  document.body.removeChild(el);
}

const copyContent = el => {
  copyToClipboard(el.innerHTML)

  el.classList.add(COPIED)
  setTimeout(
    () => {
      el.classList.remove(COPIED)
    },
    500)
}


const createChar = (id, cls, ch) => {
  let btn = create('button')

  btn.id = id
  btn.className = `chars ${cls} code-${ch.charCodeAt(0)}`
  btn.innerHTML = ch

  return btn
}

const createSymbol = (id, ch) => createChar(id, 'special', ch)


//Generating numbers, letters btns in runtime
for (let i = 48, cls = 'numbers'; i < 123; i++) {
  switch (i) {
    case 58:
      i = 64;
      cls = 'upper';
      continue;
    case 91:
      i = 96;
      cls = 'lower';
      continue;
  }

  var c = String.fromCharCode(i);
  keyboard.append(createChar(c, cls, c))
}

//Generating special chars btns in runtime
keyboard.innerHTML += '<br>'
keyboard.append(createSymbol('leftArc', '('))
keyboard.append(createSymbol('rightArc', ')'))
keyboard.append(createSymbol('at', '@'))
keyboard.append(createSymbol('and', '&'))
keyboard.append(createSymbol('space', '&nbsp;'))
keyboard.append(createSymbol('not', '!'))
keyboard.append(createSymbol('comma', ','))
keyboard.append(createSymbol('dot', '.'))
keyboard.append(createSymbol('line', '↩'))


//0-9, A-Z, a-z btns clickListener
sAll('.numbers, .upper, .lower')
  .forEach(it =>
    registerOnClick(it,
      e => {
        let charId = e.target.getAttribute('id')
        area1.value += CODE[charId]
      }))


//special chars clickListener
sAll('.special')
  .forEach(it =>
    registerOnClick(it,
      e => {
        let char,
          charId = e.target.getAttribute('id')

        switch (charId) {
          case 'leftArc':
            char = '(';
            break;
          case 'rightArc':
            char = ')';
            break;
          case 'at':
            char = '@';
            break;
          case 'and':
            char = '&';
            break;
          case 'space':
            char = ' ';
            break;
          case 'not':
            char = '!';
            break;
          case 'comma':
            char = ',';
            break;
          case 'dot':
            char = '.';
            break;
          case 'line':
            char = '\n';
            break;
        }
        area1.value += CODE[char]
      }))


//copy btn clickListener
registerOnClick(
  s('#copy'),
  () => copyContent(area1))

//clear btn clickListener
registerOnClick(
  s('#clear'),
  () => area1.value = '')

//back btn clickListener
registerOnClick(
  s('#back'),
  () => area1.value =
  (code = area1.value) == '' ? '' :
  code.substring(0, code.length - 3))


//Active char's button on typing
/*
registerOn(
  'input',
  area1,
  e => {
    let data = e.data

    if (data != null) {
      let ascii = data.charCodeAt(0)
      let btn = s(`.chars.code-${ascii}`)

      if (btn != null) {
        btn.classList.add('active')
        setTimeout(
          () => btn.classList.remove('active'),
          200)
      }
    }
  })
*/

//Decrypt on typing area 
registerOn(
  'input',
  area2,
  () => artCipher.textContent = encrypt(area2.value))


//decrypt btn clickListener
registerOnClick(
  s('#dec-btn'),
  () => {
    let plain = ''

    if ((cipher = area3.value) != '') {
      plain = decrypt(cipher)
        .split('\n')
        .join('<br>')

      if (plain.includes('*'))
        plain += '<br><i>Notice: (*) refers to undefined code.</i>'
    }

    artPlain.innerHTML = plain
  })


sAll('article')
  .forEach(it =>
    registerOnClick(it,
      e => copyContent(e.target)))


//Challenges handling
let id = -1
let challenge = [
  `Encrypt your full Name`,
  `Leave me an encrypted advice`,
  `Encrypt ur Girl / Boy friend's Name`,
  `Encrypt ur favourite programming language`,
  `Encrypt ur dreams job <sup>New</sup>`,
  `What’s ur life quote <sup>New</sup>`,
  `Have you ever won a sololearn contest before <sup>New</sup>`,
  `Coming Soon`,
]


registerOnClick(
  p,
  () => {
    if (++id == challenge.length) id = 0
    p.innerHTML = `<span> ${id}: </span> ${challenge[id]}`
  })