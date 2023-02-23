
# Fonctions d'une variable réelle

Une *fonction d'une variable réelle* est une boite noire qui associe à un
nombre réel un autre nombre réel. La fonction peut être définie sur
$\mathbb{R}$ tout entier ou sur une partie de $\mathbb{R}$

Par exemple:

- la fonction exponentielle:
  $\mathbb{R} \to \mathbb{R}, x \mapsto e^x$

- la fonction racine carrée:
  $[0, +\infty[ \to \mathbb{R}, x \mapsto \sqrt{x}$

- la fonction logarithme:
  $]0, +\infty[ \to \mathbb{R}, x \mapsto \ln{x}$

```tikz
  \begin{axis}[
      axis lines = center,
      xlabel = $x$,
      ylabel = {$y$},
      scale=0.8,
      ymin=-5.5,
      ymax=5.5,
      width=10cm,
      height=10cm,
    ]
    \addplot [
      domain=0:6,
      smooth,
      samples=500,
      color=blue,
    ]
    {sqrt{\x}} node(sqrt){};
    \node [above left, color=blue] at (sqrt) {$y=\sqrt{x}$};
    \addplot [
      domain=0.001:6,
      smooth,
      samples=500,
      color=green,
    ]
            {ln{\x}} node(log){};
    \node [below left, color=green] at (log) {$y=\ln(x)$};
    \addplot [
      domain=-3:1.7,
      smooth,
      samples=500,
      color=red,
    ]
             {exp{\x}} node(exp){};
    \node [below right, color=red] at (exp) {$y=e^x$};

  \end{axis}
```

## Propriétés de base

Normalement, une fonction vient avec son domaine de définition (ensemble de
départ) et son ensemble d'arrivée. On peut très
bien considérer ce que l'on appelle la *restriction* d'une fonction en
diminuant son domaine de définition et parfois son ensemble d'arrivée.

Donc la définition d'une fonction donne toujours:

- l'ensemble de départ (un sous-ensemble de $\mathbb{R}$ dans le cas des
  fonctions réelles).
- l'ensemble d'arrivée (un autre sous-ensemble de $\mathbb{R}$ dans le cas des
  fonctions réelles).
- un moyen de calculer l'*image* par la fonction de n'importe quel élément de
  l'ensemble de départ.

Example: Soit la fonction $f : \mathbb{R_+^*} \to \mathbb{R}$ telle que $f(x)
= \frac{\ln(x)}{\sqrt{x}}$, souvent présentée sur deux lignes:

$$
\begin{eqnarray*}
f &:& \mathbb{R_+^*} \to \mathbb{R} \\
x &\mapsto& \frac{\ln(x)}{\sqrt{x}}
\end{eqnarray*}
$$

Pourtant, on trouve souvent la question de *calculer le domaine de définition*
d'une fonction. En fait, on vous demande pour quelle nombre réel $x$ une
expression utilisant $x$ est défini. Il faut juste regarder ce qui peut poser
prblème (division par $0$, racine d'un nombre strictement négatif, logarithme
d'un nombre négatif, etc).

**Exercices:**: calculer le domaine de définition des fonctions suivantes.

- $f(x) = \sqrt{\ln{x}}$
- $g(x) = \frac{\sqrt{x^2 + x - 1}}{\sqrt{x^2 + x - 1}}$
- $h(x) = \frac{1}{\ln(x)}$

On parle aussi d'image, d'antécédent et d'image réciproque:
- L'image de $x$ par $f$ est un nom pour $f(x)$.
- Un antécédent de $y$ pour $f$ est un $x$ tel que $y = f(x)$. Pour $y$ dans
  l'ensemble d'arrivée de $f$ il peut y avoir $0$, $1$ ou plusieurs antécédent
  de $y$.
- On parle aussi de l'image d'un ensemble $X$ par $f$: c'est l'ensemble de
  toutes les images de $x \in X$. Formellement $f(X) = \{ f(x), x \in X\}$.
  On note de la même manière l'image d'un point et celle d'un ensemble, ce qui
  peut porter à confusion.
- Enfin on parle de l'image réciproque d'un ensemble $Y$ pour $f$, noté
  $f^{-1}(Y)$. Il s'agit de l'ensemble de tous les antécédent d'un élément $y
  \in Y$. Formellement  $f^{-1}(Y) = \{ x \in \mathbb{R}, f(x) \in y\}$.

**Exercices**:
[WIMS](https://wims.univ-cotedazur.fr/wims/wims.cgi?module=adm/class/classes&lang=fr&type=authparticipant&class=6363390&subclass=yes)

Une fonction peut avoir diverses propriétés, sur son domaine de définition
ou sur un intervalle plus petit. Voici les principales:

- Croisante ou strictement croissante: une fonction est croissante
  (resp. strictement croissante) sur un interval $I$ si elle préserve
  l'ordre sur $I$, c'est à dire que pour tout $x < y$ dans $I$ on a $f(x) \leq
  f(y)$ (resp $f(x) < f(y)$).

- Décroisante ou strictement décroissante: une fonction est décroissante
  (resp. strictement décroissante) sur un interval $I$ si elle inverse
  l'ordre sur $I$, c'est à dire que pour tout $x < y$ dans $I$ on a $f(x) \geq
  f(y)$ (resp. $f(x) > f(y)$).

- Monotone sur $I$: si elle est croissante ou décroissante sur $I$

- Strictement onotone sur $I$: si elle est strictement croissante ou
  strictement décroissante sur $I$.

- Injective: une fonction est injective sur $I$ si tous les éléments de $I$
  s'envoie sur des éléments distincts de $I$: c'et à dire que si $x \neq y$
  dans $I$ alors $f(x) \neq f(y)$, on par la *contraposée*, si $f(x) = f(y)$
  pour $x,y \in I$, alors $x = y$.

  Remarque: une fonction strictement monotone sur I est toujours injective.

- Surjective: une fonction est surjective sur $I$ si tous les éléments de
  l'ensemble d'arrivée ont un antécédent, ce qui veut dire que l'image du
  domaine de définition est l'ensemble d'arrivée.

  Attention, en genéral, on ne s'occupe pas de rendre aussi petit que possible
  l'ensemble d'arrivée d'une fonction, ce qui correspondrait à prendre comme
  ensemble d'arrivée l'image du domaine de définition.

- Bijective: Une fonction est bijective sur $I$ si elle est à la fois
  injective et surjective sur $I$. Donc chaque élément de l'ensemble d'arrivée
  possède exactement un antécédent, ce qui permet de définir la fonction
  réciproque de $f$, noté $f^{-1}$ qui à chaque élément de l'ensemble
  d'arrivée associe son unique antécédent.

  Remarque: toute fonction injective est bijective si l'on réduit l'ensemble
  d'arrivée à l'image de l'ensemble de départ.

**Exercices**: Pour toutes les fonctions usuelles ($x \mapsto x$, $x \mapsto
x^2$, $x \mapsto x^3$, $x \mapsto e^x$, $x \mapsto \ln(x)$, $x \mapsto
\frac{1}{x}$, $x \mapsto \sqrt{x}$, ...), précise l'ensemble de départ et
donne les propriétés qu'elle a sur son ensemble de départ ou un
sous-intervalle. On peut déterminer les propriétés à partir du graphe de la
fonction.

## Continuité et limites

La notion de continuité peut en première approximation se comprendre
par «on peut dessiner la fonction sans lever le crayon». Ce point de vue ce
traduit difficilement par une définition mathématiquement correcte.

La bonne vision est plus algorithmique: une fonction $f$ définit sur un
intervalle $I$ contenant un point $a$ est continue en $a$ si
pour caculer $f(a)$ avec une précision voulue il suffit de connaître
$a$ avec un précision suffisante. On peut donc définir la continuité en $a$
par l'existence d'une fonction qui à chaque $\epsilon > 0$ (la précision que
l'on veut pour $f(a)$) nous associe $\eta > 0$ (la précision nécessaire sur
$a$). On a alors $|f(x) - f(a)| < \epsilon$ dès que $|x - a| < \eta$.

## Dérivabilité et études de fonctions

# Quelques mots sur les suites

Une suite c'est une fonction de $\mathbb{N} \to \mathbb{R}$.
Beaucoup des concepts décrits plus haut s'applique aux suites,
comme le fait que la suite soit croissante.

Par contre le fait que l'ensemble des entiers naturels soit discontinue
implique que les notions de continuité, de dérivabilité ou de limite en un
point n'ont pas de sens.

## Limite d'une suite

## Suite définie par récurrence

# Fonctions d'une variable complexe

On ne traitera probablement pas cette partie en détail. Les fonctions
complexes sont un monde assez différent des fonctions réelles.

- Pour commencer, on est en dimension 4, car $\mathbb{C}$ est lui même un plan.
  Donc il est très difficile de visualiser le graphe d'une fonction complexe
  (c'est une surface qui vit dans un espace de dimension 4).

- Comme il n'y a pas d'ordre sur $\mathbb{C}$ tout ce qui est tableau de
  variation n'a pas de sens.

- Être dérivable devient une propriété beaucoup plus forte (intuitivement car
  le $h$ dans le taut de variation est un nombre complexe). Une fonction
  dérivable une fois est dérivable une infinité de fois (et développable en
  série).
