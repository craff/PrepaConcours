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
- $]-\infty, +\infty[ = \mathbb{R}$

La feulle 1 «Intervalle et image» sur
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

La bonne manière de s'en tirer est de savoir que toutes les transformations
«légales» concernant l'addition, la soustraction, la multiplication, la
division et la puissance doivent pouvoir se ramener aux règles de calculs
suivantes:

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
|  $(x + y) + z = x + (y + z)$ | $(x × y) × z = x × (y × z)$  | $(x^y)^z = x^{y+z}$ |
+-------------------------------------------------------------+---------------------+
| $(x + y) × z = x × z + y × z$| $x ^{(y + z)} = x^y × x^z$                         |
+------------------------------+------------------------------+---------------------+
| $x - y = x + (-y)$           | $\frac{x}{y} = x × y^{-1}$   |                     |
+------------------------------+------------------------------+---------------------+

Quelques remarques:

- Les deux premières lignes ce sont les propriétés de 0 et 1.
- La ligne 3 parle de l'opposé d'un nombre ($-x$) et de son inverse
  $\frac{1}{x} = 1 \div x = x^{-1}$.
- Les lignes 4 et 5 donnent la commutativité de $+$ et $\times$: l'ordre et
  les parenthèse ne compte pas sans une somme ou un produit.
- Le ligne 6 donne la distributivité de l'addition sur la multiplication
  et le fait que la puissance «envoie l'addition sur la multiplication»
- Enfin la ligne 7 indique que la soustraction et la division sont superflues!
- Attention à la puissance! Elle n'est ni distributive ni commutative (l'ordre
  et les parenthèses compte). De plus, $x^y$ est définit seulement lorsque $x
  \geq 0$ ou si $y$ est un entier relatif! $(-2)^{\frac{1}{2}}$ n'est pas
  défini, mais $(-2)^(-3)$ l'est.

À ce tableau, on doit ajouter des règles concernant les fonctions «usuelles»
comme le logarithme $\ln$ ou les fonctions trigonométrique $\sin$, $\cos$ et
$\tan$. On verra cela dans le [chapitre «Fonctions»](Fonctions.md) et [celui
sur la trigonométrie](Trigo.md).

Une fois que l'on a compris ce qu'on a le droit de faire, il faut savoir ce
que l'on doit faire. Lorsque l'on résoud une équation, on veut grouper toutes
les occurrences de $x$ (ou une autre variable), seules d'un côté du signe
d'égalité. Lorsque l'on veut étudier le signe d'une expression, on veut
*factoriser*, c'est à dire mettre l'expression sous forme de produit afin
d'appliquer la règle des signes. Parfois, on veut juste simplifier et voir ce
que cela peut donner pour avancer, on a alors tendance à *développer* et
mettre au même dénominateur.

### Équation

### Ordre et inéquation

La caractéristique principale des nombres réelles c'est qu'ils sont
*totalement ordonnés*. On peut (on doit) voir l'ensemble des nombres réels
comme une droite orienté: si $x$ est à gauche de $y$ alors $x < y$. De plus,
cet ordre ne présente aucun «trou». On dit que $\mathbb{R}$ est complet.
Par exemple, si on regarde l'inéquation $x^2 \geq 2$ pour $x > 0$; elle est fausse si $x$
et petit et au bout d'une moment, elle devient vrai. Il y a forcément dernier
nombre pour laquelle elle est vrai et c'est $\sqrt{2}$. Sinon il y aurait un
«trou» dans la droite réelle.

## Nombres complexes
