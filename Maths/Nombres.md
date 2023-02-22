# Nombres réels et complexes

## Nombres réels

### Notations sur les intervalles et les ensembles

L'ensemble des nombres réels se note $\mathbb{R}$. Les sous-ensembles courants
de $\mathbb{R}$ sont:

- $\mathbb{N}$: les entiers naturels, c'est à dire les entiers positifs ou
 nuls,

- $\mathbb{Z}$: les entiers relatifs (positifs, négatifs ou nuls)

- $\mathbb{Q}$: les nombres rationnels (quotient de deux entiers, bien sûr le
  dénominateur doit être non nul).

Les sous-ensembles contiguës de nombres réels s'appellent des intervalles. Ils
se notent:

- $[a, b]$: les nombres entre $a$ (inclu) et $b$ (inclu). $a$ doit être inférieur ou égal à $b$.
- $]a, b]$: les nombres entre $a$ (exclu) et $b$ (inclu). $a$ doit être inférieur ou égal à $b$.
- $[a, b[$: les nombres entre $a$ (inclu) et $b$ (exclu). $a$ doit être inférieur ou égal à $b$.
- $]a, b[$: les nombres entre $a$ (exclu) et $b$ (exclu). $a$ doit être inférieur ou égal à $b$.
- $]-\infty, b]$: les nombres plus petit que $b$ (inclu).
- $]-\infty, b[$: les nombres plus petit que $b$ (exclu).
- $[a, +\infty[$: les nombres plus grand que $a$ (inclu).
- $]a, +\infty[$: les nombres plus grand que $a$ (exclu).
- $]-\infty, +\infty[ = \mathbb{R}$.
- $[0, +\infty[ = \mathbb{R}_+$ et $]-\infty, 0] = \mathbb{R}_-$.
- $]0, +\infty[ = \mathbb{R}_+^*$ et $]-\infty, 0[ = \mathbb{R}_-^*$.

Pour les ensembles non contiguës, on les écrit (si possible) comme des
réunions d'intervalles. Par exemple: $\mathbb{R}^* = ]-\infty, 0[ \cup ]0,
+\infty[$ représente l'ensemble de tous les réels sauf $0$.

Rappel: $A \cup B$ représente la réunion de deux ensembles (les élements
qui sont dans au moins un des deux) et $A \cap B$ l'intersection (les éléments
qui sont dans les deux ensembles).

**Exercice**: La feulle 1 «Intervalle et image» sur
[WIMS](https://wims.univ-cotedazur.fr/wims/wims.cgi?module=adm/class/classes&lang=fr&type=authparticipant&class=6363390&subclass=yes)
vous permettra de vous entrainer. Elle nécessite aussi de comprendre les
tableaux de variations et la notion d'image d'une fonction du [chapitre «Fonctions»](Fonctions.md)

### Calcul littéral

Vous avez besoin de pouvoir simplifier/transformer une expression ou une
égalité utilisant des variables réelles. Il faut pas mal d'expérience pour
faire cela sans erreur et rapidement.

Le premier problème est de savoir ce que l'on a le droit de faire.
Lister tout ce qu'on a le droit de faire est presque impossible et serait
de toutes manières trop long.

La bonne manière de s'en tirer est de s'entraîner et de savoir que toutes les
transformations «légales» concernant l'addition, la soustraction, la
multiplication, la division et la puissance doivent pouvoir se ramener aux
règles de calculs suivantes:

+------------------------------+------------------------------+---------------------+
| Addition                     | Multiplication               | Puissance           |
+:============================:+:============================:+:===================:+
|                              | $x × 0 = 0$                  | $x^0 = 1$           |
+------------------------------+------------------------------+---------------------+
|  $x + 0 = x$                 | $x × 1 = x$                  | $x^1 = x$           |
+------------------------------+------------------------------+---------------------+
| $x + (-y) = 0$               | $x × y^{-1} = 1$             |                     |
+------------------------------+------------------------------+---------------------+
|  $x + y = y + x$             | $x × y = y × x$              |                     |
+------------------------------+------------------------------+---------------------+
|  $(x + y) + z = x + (y + z)$ | $(x × y) × z = x × (y × z)$  | $(x^y)^z = x^{y\times z}$ |
+-------------------------------------------------------------+---------------------+
| $(x + y) × z = x × z + y × z$| $x ^{y + z} = x^y × x^z$                           |
+------------------------------+------------------------------+---------------------+
| $x - y = x + (-y)$           | $\frac{x}{y} = x × y^{-1}$   |                     |
+------------------------------+------------------------------+---------------------+

Quelques remarques:

- Les deux premières lignes ce sont les propriétés de 0 et 1.
- La ligne 3 parle de l'opposé d'un nombre ($-x$) et de son inverse
  $\frac{1}{x} = 1 \div x = x^{-1}$.
- Les lignes 4 et 5 donnent la commutativité de $+$ et $\times$: l'ordre et
  les parenthèse ne compte pas dans une somme ou un produit.
- Le ligne 6 donne la distributivité de l'addition sur la multiplication
  et le fait que la puissance «envoie l'addition sur la multiplication»
- Enfin la ligne 7 indique que la soustraction et la division sont superflues!
- Attention à la puissance! Elle n'est ni distributive ni commutative (l'ordre
  et les parenthèses comptent). De plus, $x^y$ est défini seulement lorsque $x
  \geq 0$ ou si $y$ est un entier relatif! $(-2)^{\frac{1}{2}}$ n'est pas
  défini, mais $(-2)^{-3}$ l'est.

À ce tableau, on doit ajouter des règles concernant les fonctions «usuelles»
comme le logarithme $\ln$ ou les fonctions trigonométrique $\sin$, $\cos$ et
$\tan$. On verra cela un peu plus bas, dans le [chapitre «Fonctions»](Fonctions.md) et [celui
sur la trigonométrie](Trigo.md).

Une fois que l'on a compris ce qu'on a le droit de faire, il faut savoir ce
que l'on doit faire.

- Lorsque l'on résoud une équation, on veut grouper toutes
les occurrences de $x$ (ou une autre variable), seules d'un côté du signe
d'égalité.

- Lorsque l'on veut étudier le signe d'une expression, on veut
*factoriser*, c'est à dire mettre l'expression sous forme de produit afin
d'appliquer la règle des signes.

- Parfois, on veut juste simplifier et voir ce
que cela peut donner pour avancer, on a alors tendance à *développer* et
mettre au même dénominateur.

**Exercices**:

- La feulle 2 sur
[WIMS](https://wims.univ-cotedazur.fr/wims/wims.cgi?module=adm/class/classes&lang=fr&type=authparticipant&class=6363390&subclass=yes)
vous permettra de vous entrainer.

- Retrouver les identités remarquables usuelles en développant $(a+b)^2$,
  $(a-b)^2$ et $(a+b)(a-b)$

- Développer $(a+b+c)^2$. Que se passe-t-il avec plus de nombres?

- Développer $(a+b)^3$ et $(a-b)^3$. Que se passe-t-il un exposant plus élevé?

### Équation

Vous aurez souvent à *résoudre une équation* ou même plusieurs (on parle d'un *système d'équations*).
Il s'agit de trouver toutes les valeurs d'une variable qui rendent une égalité
vraie. Il y aura parfois d'autres variables, il faudra alors exprimer une
variable particulière (*l'inconnue*) en fonction des autres.

Example: résoudre $x^2 + a x = 2$, il faut trouver $x$ en fonction de $a$.

Il n'existe aucune méthode pour résoudre toutes les équations. On verra au
chapitre [Algebre linéaire](Lineaire.md) comment résoudre les systèmes du
premier degré. On va rappeler ci-dessous les équations du second degré. Mais
Évariste Gallois a montré qu'avec une seule inconnue on ne pouvait pas
résoudre toutes les équations de degré 5 ou plus comme $x^5 + x^3 + x^2 - 3 =
0$.

Il n'y a en fait que quelques règles pour justifier tout ce que l'on a le droit
de faire pour résoudre des équations:

- On peut faire la même transformation (appliquer la même *fonction*) des deux
  côtés du signe «$=$». Mais attention, il
  faut pouvoir revenir en arrière par une autre opération. Par exemple on peut
  ajouter 3 des deux côtés, on revient en arrière en soustrayant 3. On peut
  diviser par 2 des deux côtés, on revient en arrière en muliplicant par 2. On
  n'a pas le droit de multiplier par 0 des deux côtés car on obtiendrait $0 =
  0$ et on ne peut pas revenir en arrière. On ne peut mettre au carré des
  deux côtés que si on sait que les deux côtés ont le même signe car alors on peut
  revenir en arrière avec la racine carré ou son opposé.

- On peut simplifier/transformer un ou les deux côtés de l'équation (bien sur
  par des transformation légale).

- Enfin, on a quelques car particuliers: par exemple un produit est nul si et
  seulement si l'un des deux facteurs est nul ou une somme de carrés est nul
  et seulement si tous les carrés sont nuls.

Voici un exemple illustrant cela. On doit résoudre l'equation suivante,
sachant que $x > 0$:

$$
\begin{array}{rcll}
\sqrt{x} - \frac{1}{\sqrt{x}} &=& 1 &  \text{on élève au carré} \\
(\sqrt{x} - \frac{1}{\sqrt{x}})^2 &=& 1 &  \text{on développe} \\
x - 2 + \frac{1}{x} &=& 1 & \text{$-1$ des deux côtés}\\
x - 3 + \frac{1}{x} &=& 0 & \text{on multiplie par $x$}\\
x^2 - 3x + 1 &=& 0 & \text{on résoud par la formule usuelle}\\
\Delta = 9 - 4 = 5 \hspace{1em} x &=& \frac{3+\sqrt{5}}{2} & \text{ou } x = \frac{3-\sqrt{5}}{2}
\end{array}
$$

**Exercice**: Essaye de résoudre avec la calculatrice
[Numworks](https://www.numworks.com/simulator/)! et cherche l'erreur!

### Équations du premier et du second degré

La solution de $ax + b = 0$ est $x = -\frac{b}{a}$ qui se retrouve très
facilement.

Pour les équations du second degré (comme à la fin l'exemple ci-dessus),
il faut connaître la méthode.

Pour résoudre une équation de la forme $a x^2 + b x + c$, on calcule d'abord
le discriminant:

- $\Delta = b^2 - 4 a c$

Ensuite on distingue 3 cas:

- $\Delta < 0$: pas de solution dans $\mathbb{R}$ (il y a deux solutions
  complexes).

- $\Delta = 0$: une seule solution: $x = - \frac{b}{2a}$. Vous avez raté
  l'occasion de gagner du temps en remarquant qu'on avait une identité
  remarquable.

- $\Delta > 0$: deux solution $x_1 = \frac{-b-\sqrt{\Delta}}{2a}$ et
  $x_2 = \frac{-b+\sqrt{\Delta}}{2a}$

Remarque: la somme des deux solutions est $-\frac{b}{a}$ leur produit est
$\frac{c}{a}$, c'est pratique pour vérifier que l'on ne c'est pas trompé.

**Exercice**: montre ce résultat sur le somme et le produit des solutions
d'une équation du second degré.

### Logarithme et exponentielle

Les fonctions exponentielle et logarithme sont essentielles en mathématique et
on en aura besoin ci-dessous pour les nombres complexes.

**La fonction exponentielle** est juste un autre nom pour la puissance.
Dans l'expression $x^y$ on parle de fonction puissance lorsque l'on fait
varier $x$, on parle d'exponentielle lorsque l'on fait varier $y$.
Plus précisément:

- $x^a$ est «$x$ à la puissance $a$» et
- $a^x$ est «l'exponentielle de $x$ en *base* $a$».

Voici le graphe de quelques puissances:
```tikz
  \begin{axis}[
      axis lines = center,
      xlabel = $x$,
      ylabel = $y$,
      scale=0.8,
      width=10cm,
      height=10cm,
	  ymax=9,
	  ymin=-9
    ]
    \addplot [
      domain=-3:3,
      smooth,
      samples=540,
      color=blue,
    ]
    {\x}
    node [above left, color=blue]  {$y=x$};
    \addplot [
      domain=-3:3,
      smooth,
      samples=500,
      color=green,
    ]
    {\x^(-1)}
    node [pos=1,above left, color=green] {$y = x^{-1}$};
    \addplot [
      domain=-3:3,
      smooth,
      samples=500,
      color=red,
    ]
    {\x^2}
    node [pos=0, below right, color=red] {$y=x^2$};
    \addplot [
      domain=-2.1:2.1,
      smooth,
      samples=500,
      color=black,
    ]
    {\x^3}
    node [pos=1, below left, color=black] {$y=x^3$};
  \end{axis}
```

Voici le graphe de quelques exponentielles:
```tikz
  \begin{axis}[
      axis lines = center,
      xlabel = $x$,
      ylabel = $y$,
      scale=0.8,
      width=10cm,
      height=10cm,
    ]
    \addplot [
      domain=-3:3,
      smooth,
      samples=540,
      color=blue,
    ]
    {exp{\x}}
    node [below left, color=blue]  {$y=e^x$};
    \addplot [
      domain=-3:3,
      smooth,
      samples=500,
      color=green,
    ]
    {2^\x}
    node [pos=1,above left, color=green] {$y=2^x$};
    \addplot [
      domain=-3:1.5,
      smooth,
      samples=500,
      color=red,
    ]
    {10^\x}
    node [pos=1, below right, color=red] {$y=10^x$};
    \addplot [
      domain=-3:3,
      smooth,
      samples=500,
      color=magenta,
    ]
    {(1/2)^\x}
    node [pos=0, above right, color=magenta] {$y=(\frac{1}{2})^x$};
  \end{axis}
```

Lorsque l'on ne précise pas la base, c'est que l'on utilise
la constante $e \simeq 2.71828$. On verra plus tard pourquoi ce nombre.
On utilise aussi souvent les bases $2$ et $10$.

Un propriété essentielle de l'exponentielle est que c'est une fonction
croissante de $\mathbb{R} \to ]0, +\infty]$, qui atteint tous les réels
strictement positifs
exactement une fois.

Donc, pour une base fixée $a$ et pour chaque nombre réel $y > 0$, il existe un
unique réel $x$ tel que $y = a^x$. On dit alors que $x$ est le *logarithme* de
$y$ en base $a$ qui se note $y = \ln_a(x)$. On dit que le logarithme est la
fonction réciproque de l'exponentielle (On parle aussi de fonction inverse,
mais il y a risque de confusion entre l'inverse d'un nombre $\frac{1}{x}$ et
l'inverse d'une fonction).

Attention: le logarithme n'est définit que sur $]0, +\infty]$. $\ln(0)$ ou
$\ln(-1)$, ça n'existe pas.

Voici le graphe du logarithme népérien:
```tikz
  \begin{axis}[
      axis lines = center,
      xlabel = $x$,
      ylabel = $y$,
      scale=0.8,
      width=10cm,
      height=10cm,
	  ymin=-3,
    ]
    \addplot [
      domain=0:10,
      smooth,
      samples=540,
      color=blue,
    ]
    {ln{\x}}
    node [below left, color=blue]  {$y=\ln(x)$};
  \end{axis}
```

Le fait que le logarithme soit la fonction
réciproque de l'exponentielle et inversement, se traduit par:

1) $\ln_a(a^x) = x$ pour tout nombre $x$ réel et toute base $a > 0$.
2) $a^{\ln_a(y)} = y$ pour tout nombre réel $y > 0$ et toute base $a > 0$.

Comme on l'a vu plus haut, l'exponentielle envoie l'addition sur la
multiplication et la multiplication sur la puissance. Comme fonction
réciproque, le logarithme fait l'inverse:

3) $a^{x_1+x_2} = a^{x_1} \times a^{x_2}$ donc $\ln_a(y_1 \times y_2) =
  \ln_a(y_1) + \ln_a(y_2)$

4) $a^{x_1 \times x_2} = (a^{x_1})^{x_2} = (a^{x_2})^{x_1}$
  donc $\ln_a(y^z) = z \ln_a(y) = \ln_a(y_1) + \ln_a(y_2)$ (essayez de le
  démontrer).

Ces relations permettent de changer de base:

5) $a^x = b^{x \ln_b(a)}$

Dans le cas de la base $e$ on parle de logarithme naturel ou népérien et
on notre simplement $\ln(x)$ pour $\ln_e(x)$. Donc on peut écrire:

6) $a^x = e^{x \ln(a)}$

Attention, sur les calculatrices, on trouve souvent `ln` pour le logarithme naturel et
`log` pour le logarithme en base $10$, tandis que beaucoup de langage de
programmation et quelques calculatrices utilsent `log` et `log10`.

**Exercice**: démontre les trois dernières propriétés à partie de 1,2 et 3.

### Ordre et inéquation

La caractéristique principale des nombres réels c'est qu'ils sont
*totalement ordonnés*. On peut (on doit) voir l'ensemble des nombres réels
comme une droite orientée: si $x$ est à gauche de $y$ alors $x < y$. De plus,
cet ordre ne présente aucun «trou». On dit que $\mathbb{R}$ est complet.

Par exemple, si on regarde l'inéquation $x^2 \geq 2$ pour $x > 0$. Elle est
fausse si $x$ est petit, au bout d'une moment elle devient vrai et reste
vrai. Il y a forcément un dernier nombre pour laquelle elle est vrai et c'est
$\sqrt{2}$. Sinon il y aurait un «trou» dans la droite réelle.

C'est cette absence de trou qui fait la différence entre $\mathbb{Q}$ et
$\mathbb{R}$.

Une chose essentielle est de savoir quelles transformations

- préservent l'ordre,
- inversent l'ordre ou
- ne permettent pas de dire quelque-chose simplement.

On retiendra:

- L'addition préserve l'ordre: si $x > y$, alors $x + a > y + a$.
- La multiplication par un nombre positif préserve l'ordre: si $x > y$ et $a >
  0$, $ax > ay$.
- La multiplication par un nombre négatif (et donc l'opposé) inverse l'ordre:
  si $x > y$ et $a < 0$, $ax < ay$, en particulier si $x > y$, $-x < -y$.
- La puissance d'un nombre positif par un nombre positif préserve l'ordre: si $x > y > 0$ et $a >
  0$, $x^a > y^a$.
- La puissance d'un nombre positif par un nombre négatif inverse l'ordre: si
  $x > y > 0$ et $a < 0$, $x^a < y^a$. En particulier, l'inverse inverse
  l'ordre: si $x > y > 0$ alors $x^{-1} = \frac{1}{x} < \frac{1}{y} = y^{-1}$.
- L'exponentielle préserve l'ordre si la base est supérieure à $1$:
  Si $x > y$ et $a > 1$, $a^x > a^y$.
- L'exponentielle inverse l'ordre si la base est inférieure à $1$:
  Si $x > y$ et $0 < a < 1$, $a^x < a^y$.
- Le logarithme de base $a > 1$ préserve l'ordre
- Le logarithme de base $0 < a < 1$ inverse l'ordre

Il faut faire attention avec l'inverse:

- si $x > y > 0$ alors $\frac{1}{x} < \frac{1}{y}$ (ordre inversé),
- si $x < y < 0$ alors $\frac{1}{x} > \frac{1}{y}$ (ordre inversé),
- Mais si $x < 0 < y$ alors $\frac{1}{x} < 0 < \frac{1}{y}$ (ordre préservé).

Une fois que l'on connaît les transformations qui inverse et qui préserve
l'ordre, on peut résoudre des inéquations. Ce sont les mêmes règles du jeu que
pour les équations, sauf que l'on ne peut faire la même transformation de
chaque côté que si on sait si elle préserve ou inverse l'ordre et dans le
second cas, on doit bien sûr inverser le sens de l'inégalité.

Voici un exemple:

$$
\begin{array}{rcll}
e^x &\leq& 10 \times 3^x &\text{calcul} \\
e^x &\leq& 10 \times e^{\ln(3) x} &\text{logarithme des deux côtés} \\
x &\leq& \ln(10 \times e^{\ln(3) x}) &\text{calcul} \\
x &\leq& \ln(10) + \ln(3) x &\text{soustraction de $\ln(3) x$} \\
(1-\ln(3)) x &\leq& \ln(10) &\text{division par $1 - \ln(3) \simeq -0.0986 < 0$}\\
x &\geq& \frac{\ln(10)}{1-\ln(3)} \simeq -23.35 & \\
\end{array}
$$

```tikz
  \begin{axis}[
      axis lines = center,
      xlabel = $x$,
      ylabel = $y$,
      scale=0.8,
      width=10cm,
      height=10cm,
    ]
    \addplot [
      domain=-24:-23,
      smooth,
      samples=540,
      color=blue,
    ]
    {exp{\x}} node(exp){};
    \node [below left, color=blue] at (exp) {$y=e^x$};
    \addplot [
      domain=-24:-23,
      smooth,
      samples=500,
      color=green,
    ]
    {10*3^\x} node(three){};
    \node [below left, color=green] at (three) {$y=10 \times 3^x$};
  \end{axis}
```

## Nombres complexes

À venir
