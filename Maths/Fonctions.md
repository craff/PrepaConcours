<div style="position: fixed; right:10px; top: 0px; font-weight: bold;
            font-size: x-large;">
  <a href="Nombres.html" style="text-decoration: none;">←</a>
  <a href="../Maths.html" style="text-decoration: none;">↑</a>
  <a href="Eqdiff.html" style="text-decoration: none;">→</a>
</div>

# Fonctions d'une variable réelle

Une *fonction d'une variable réelle* est une boite noire qui associe à un
nombre réel un autre nombre réel. La fonction peut être définie sur
$\mathbb{R}$ tout entier ou sur une partie de $\mathbb{R}$. Dans la plupart
des cas, les fonctions sont définies par une *formule*.

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
  fonctions réelles) ;
- l'ensemble d'arrivée (un autre sous-ensemble de $\mathbb{R}$ dans le cas des
  fonctions réelles) ;
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
expression utilisant $x$ est définie. Il faut juste regarder ce qui peut poser
problème (division par $0$, racine d'un nombre strictement négatif, logarithme
d'un nombre négatif, etc).

**Exercices**: calculer le domaine de définition des fonctions suivantes.

- $f(x) = \sqrt{\ln{x}}$
- $g(x) = \frac{\sqrt{x^2 + x - 1}}{\sqrt{x^2 + x + 1}}$
- $h(x) = \frac{1}{\ln(x)}$

On parle aussi d'image, d'antécédent et d'image réciproque:

- «L'image de $x$ par $f$» est un nom pour $f(x)$.
- «Un antécédent de $y$ pour $f$» est un $x$ tel que $y = f(x)$. Pour $y$ dans
  l'ensemble d'arrivée de $f$ il peut y avoir $0$, $1$ ou plusieurs antécédent
  de $y$.
- On parle aussi de l'image d'un ensemble $X$ par $f$: c'est l'ensemble de
  toutes les images de $x \in X$. Formellement $f(X) = \{ f(x), x \in X\}$.
  On note de la même manière l'image d'un point et celle d'un ensemble, ce qui
  peut porter à confusion.
- Enfin on parle de l'image réciproque d'un ensemble $Y$ pour $f$, noté
  $f^{-1}(Y)$. Il s'agit de l'ensemble de tous les antécédents d'un élément $y
  \in Y$. Formellement  $f^{-1}(Y) = \{ x \in \mathbb{R}, f(x) \in y\}$.

**Exercices**:
[WIMS, feuille 1](https://wims.univ-cotedazur.fr/wims/wims.cgi?module=adm/class/classes&lang=fr&type=authparticipant&class=6363390&subclass=yes)

Une fonction peut avoir diverses propriétés, sur son domaine de définition
ou sur un intervalle plus petit. Voici les principales:

- *Croisante* ou *strictement croissante*: une fonction est croissante
  (resp. strictement croissante) sur un interval $I$ si elle préserve
  l'ordre sur $I$, c'est à dire que pour tout $x < y$ dans $I$ on a $f(x) \leq
  f(y)$ (resp $f(x) < f(y)$).

- *Décroisante* ou *strictement décroissante*: une fonction est décroissante
  (resp. strictement décroissante) sur un interval $I$ si elle inverse
  l'ordre sur $I$, c'est à dire que pour tout $x < y$ dans $I$ on a $f(x) \geq
  f(y)$ (resp. $f(x) > f(y)$).

- *Monotone* sur $I$: si elle est croissante ou décroissante sur $I$

- *Strictement monotone* sur $I$: si elle est strictement croissante ou
  strictement décroissante sur $I$.

- *Injective*: une fonction est injective sur $I$ si tous les éléments de $I$
  s'envoient sur des éléments distincts de $I$: c'et à dire que si $x \neq y$
  dans $I$ alors $f(x) \neq f(y)$, on par la *contraposée*, si $f(x) = f(y)$
  pour $x,y \in I$, alors $x = y$.

  Remarque: une fonction strictement monotone sur I est toujours injective.

- *Surjective*: une fonction est surjective sur $I$ si tous les éléments de
  l'ensemble d'arrivée ont un antécédent, ce qui veut dire que l'image du
  domaine de définition est l'ensemble d'arrivée.

  Attention, en genéral, on ne s'occupe pas de rendre aussi petit que possible
  l'ensemble d'arrivée d'une fonction, ce qui correspondrait à prendre comme
  ensemble d'arrivée l'image du domaine de définition.

- *Bijective*: Une fonction est bijective sur $I$ si elle est à la fois
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

## Polynômes et fractions rationnelles

On a deux types très importants de fonctions qu'il faut connaître:

- Les polynômes que l'on obtient par addition et multiplication de $x$ et de
  nombres réels. Les polynômes d'une seule variable ($x$) peuvent toujours
  s'écrire
  $$ a_0 + a_1 x + a_2 x^2 + \dots + a_d x^d $$
  La plus grande puissance de $x$ s'appelle le degré du polynôme.
- Les fractions rationnelles autorisent en plus la division. On peut toujours se
  ramener à un quotient de deux polynômes:
  $$
  \frac{a_0 + a_1 x + a_2 x^2 + \dots + a_d x^d}{b_0 + b_1 x + b_2 x^2 + \dots +
  b_e x^e}
  $$

## Continuité

La notion de continuité peut en première approximation se comprendre
par «on peut dessiner la fonction sans lever le crayon». Ce point de vue ce
traduit difficilement par une définition mathématiquement correcte.

La bonne vision est plus algorithmique: une fonction $f$ définie sur un
intervalle $I$ contenant un point $a$ est continue en $a$ si
pour caculer $f(a)$ avec une précision voulue il suffit de connaître
$a$ avec une précision suffisante. On peut donc définir la continuité en $a$
par l'existence d'une fonction qui à chaque $\varepsilon > 0$ (la précision que
l'on veut pour $f(a)$) nous associe $\eta > 0$ (la précision nécessaire sur
$a$). On a alors $|f(x) - f(a)| < \varepsilon$ dès que $|x - a| < \eta$.

Le point important sur les fonctions continues est qu'il est en général facile
de savoir si elles sont continues avec les règles suivantes:

- Les fonctions *polynômes* sont continues sur $\mathbb{R}$.
- Si $f$ et $g$ sont continues sur $I$, $f(x) + g(x)$ est continue sur $I$.
- Si $f$ et $g$ sont continues sur $I$, $f(x) \times g(x)$ est continue sur
  $I$.
- Si $f$ et $g$ sont continues sur $I$ si $g(x)$ ne s'annule pas sur $I$,
  $\frac{f(x)}{g(x)}$ est continue sur $I$.
- Si $g$ est continue sur $I$ et $f$ est continue sur $g(I)$, alors $f(g(x))$
  est continue sur $I$.

Pour appliquer ces règles il faut aussi connaître le *domaine de continuité*
des fonctions de bases: pour tous les cas usuels, ces fonctions sont continues
sur leur domaine de définition.

Exercice: donner les domaines de définition et de continuité des fonctions suivantes:

- $f(x) = \ln(x^2 - 2x + 1)$
- $g(x) = \frac{1}{\sqrt{x^2+1}}$
- $h(x) = e^{-\frac{1}{x^2}}$

## Limites

Lorsqu'une fonction n'est pas défini en $a$, mais qu'elle est continue autour
de $x$, on se demande souvent quelle est sa *limite* en $a$. Pour faire
simple, dans ce cours, on va dire que $f(x)$ a pour limite $l$ lorsque $x$
tend vers $a$ si la fonction obtenue en étendant la définition de $f(x)$ avec
$f(a) = l$ est continue en $a$. C'est quelque-chose que l'on fait souvent et
qui s'appelle un prolongement par continuité.

On note $\lim_{x \to a} f(x)$ la limite de $f(x)$ en a.

La limite en $a$ peut aussi être $+\infty$ (plus l'infini) ou $-\infty$ si
$f(x)$ devient arbitrairement grand (ou petit) lorsque $x$ tend vers $a$.

Pour terminer, on regarde aussi la limite de $f(x)$ lorsque $x$ tend vers
$+\infty$ ou $-\infty$, qui peut être finie ou infinie.

On n'a pas le temps ici de regarder de trop près comment définir toutes ces
limites. En pratique, on se contente de *calculer la limite* avec quelques règles:

- beaucoup de limites connues
- de théorèmes simples comme le théorème des gendarmes:
si une fonction est coincé entre deux fonctions qui tendent vers une même
limite $l$, elle tend aussi vers $l$.
- des astuces de calcul (comme la quantité conjuguée)
- et surtout, on utilise les développements limités.

Pour l'instant, on ne va pas donner de règles, on verra cela un peu plus
tard.

**Exercice**: calculer les limites suivantes:

- $\frac{1+x}{1-x}$ en $+\infty$ et $-\infty$

## Dérivabilité

La dérivée d'une fonction $f$ au point $x_0$ représente la pente de la tangente
de $f$ au point de coordonnées $(x_0, f(x_0))$. Ainsi, c'est la limite de la
pente d'une corde comme le montre la figure suivante:

```tikz
  \begin{axis}[
      axis lines = center,
      xlabel = $x$,
      ylabel = {$y$},
	  ymax = 11,
	  scale=1.2,
    ]
    \addplot [
      domain=0:3.5,
      smooth,
      samples=500,
      color=blue,
    ]
    {\x^2 + 1}
     node [pos=0.9,below left] {$y = f(x)$};
    \addplot [
      domain=0:5,
      smooth,
      samples=500,
      color=red,
    ]
    {2 + 2*(\x-1)}
     node [pos=0.7,right] {$\scriptstyle y = \begin{array}{ll}\scriptstyle f (x_0) +\\
    \scriptstyle f'(x_0)(x - x_0) \end{array}$};
    \node at (axis cs:1,2) [inner sep=0] (A){};
	\node at (axis cs:3,10)[inner sep=0] (B){};
	\node at (axis cs:3,2) [inner sep=0] (C){};
	\path [draw,dashed] (A) -- (axis cs:1,0) node [above right] {$x_0$};
	\path [draw,dashed] (A) -- (axis cs:0,2) node [above right] {$f(x_0)$};
	\path [draw,dashed] (C) -- (axis cs:3,0) node [above left] {$x$};
	\path [draw,dashed] (B) -- (axis cs:0,10) node [below right] {$f(x)$};
	\path [draw] (A)
	  -- node[left] {pente:$\frac{f(x) - f(x_0)}{x-x_0}$} (B)
	  -- node[right,pos=0.6] {$f(x) - f(x_0)$} (C)
	  -- node[below] {$x - x_0$} (A);
  \end{axis}
```

Cette figure montre la corde sous la courbe de $f$ entre deux points de
coordonnées $(x_0,f(x_0))$ et $(x,f(x))$, et en rouge la tangente à la courbe
au premier point.

On «voit» que le pente de la corde va se rapprocher de la pente de la tangente
si $x$ se rapproche de $x_0$. Si, par définition, on appelle $f'(x_0)$ la
pente de la tangente au point $x_0$, on peut écrire que

$$e(x) = f'(x_0) - \frac{f(x) - f(x_0)}{x - x_0} \text{ avec } \lim_{x \to
x_0} e(x) = 0$$

En réécrivant, on trouve:

$$f(x) = f(x_0) + f'(x_0) (x - x_0) - e(x) (x - x_0)$$

Comme $e(x)$ devient petit si $x$ se rapproche de $x_0$ cela permet
bien d'approcher la courbe $f$ par une droite.

En changeant de variables, on peut aussi écrire

$$f(x + h) = f(x) + f'(x) h - e(x + h) h$$

Cette formule s'appelle la formule de Taylor à l'ordre $1$, c'est elle qui
justifie que la dérivée donne la pente de la tangente si le taux de variation
$\frac{f(x) - f(x_0)}{x - x_0}$ possède effectivement une limite lorque $x$
tend vers $x_0$.

On peut aussi dériver la dérivée d'une fonction. Si on peut dériver $n$ fois
une fonction en $x$, on dit que la fonction est $n$ fois dérivable en $x$.
On parle de dérivée seconde (notée $f''(x)$), troisième, etc...

La dérivée donne la vitesse en physique et la dérivée seconde donne
l'accélération. En géométrie, la dérivée seconde permet de calculer le
rayon de courbure d'une courbe (attention ce n'est pas le rayon de courbure).

Il faut savoir dériver et savoir sur quel domaine une fonction est dérivable.
On commence par donner la dérivée des fonctions usuelles:

- Les fonctions *polynômes* sont dérivables sur $\mathbb{R}$:

  si $(x^b)' = b x ^{b-1}$

  Cette formule marche si $b$ est un entier OU si $x > 0$.

  Pour dériver un polynôme arbitraire, il suffit d'appliquer cette règle et la
  régle sur la dérivée de la somme ci-dessous.

  Cette formule donne aussi $(\frac{1}{x})' = - \frac{1}{x^2}$ sur
  $\mathbb{R^*}$ avec $b = -1$
  et $(\sqrt{x})' = \frac{1}{2\sqrt{x}}$ avec $b = \frac{1}{2}$ sur
  $\mathbb{R_+^*}$.

  Attention, la fonction racine carrée est continue sur  $\mathbb{R_+}$
  et dérivable sur   $\mathbb{R_+^*}$. C'est une des rares fonctions de base
  qui n'est pas dérivable sur tout son domaine de définition.


  Remarque: la notation $(...)'$ est un peu abusive, on dérive une fonction, pas une
  expression. On verra une meilleure notation dans le [chapitre sur les
  fonctions à plusieurs variables](Multivar.md).

- La fonction exponentielle est dérivable sur $\mathbb{R}$ et
  elle est sa propre dérivée. De manière générale on a

  $(e^x)' = e^x$ et $(a^x)' = \ln(x) a^x$

- La fonction logarithme est dérivable sur $\mathbb{R^*_+}$ et
  $\ln'(x) = \frac{1}{x}$. On a même $(\ln(|x|))' = \frac{1}{x}$
  sur $\mathbb{R^*}$.

- Les fonctions $\sin$ et $\cos$ sont dérivables sur $\mathbb{R}$:

  $\sin'(x) = \cos(x)$ et $\cos'(x) = - \sin(x)$

Voici maintenant des règles générales:

- Si $f$ et $g$ sont dérivables sur $I$, $f(x) + g(x)$ est dérivable sur $I$
  et $$(f+g)'(x) = f'(x) + g'(x)$$

  Exemple: $f(x) = \sqrt{x} + x$ donne $f'(x) = \frac{1}{2\sqrt{x}} + 1$ sur
  $\mathbb{R}^*_+$.

- Si $f$ et $g$ sont dérivables sur $I$, $f(x) \times g(x)$ est dérivable sur
  $I$ et
  $$(f\times g)'(x) = f'(x) g(x) + f(x) g'(x)$$

  Exemple: $f(x) = x \ln(x)$, $f'(x) = 1 \ln(x) + x \frac{1}{x} = \ln(x) + 1$.

- Si $f$ et $g$ sont dérivables sur $I$ si $g(x)$ ne s'annule pas sur $I$,
  $\frac{f(x)}{g(x)}$ est dérivable sur $I$. et
  $$\left(\frac{f}{g}\right)'(x) = \frac{f'(x) g(x) - f(x) g'(x)}{g^2(x)}
  = \frac{f'(x)}{g(x)} - \frac{f(x) g'(x)}{g^2(x)} $$

  Exemple: $f(x) = \frac{e^x}{x}$, $f'(x) = \frac{e^x \times x - e^x \times
  1}{x^2} = e^x \frac{x - 1}{x}$

- Si $g$ est dérivable sur $I$ et $f$ est dérivable sur $g(I)$, alors $f(g(x))$
  est dérivable sur $I$ et
  $$(f \circ g)'(x) = f'(g(x)) g'(x)$$

  Exemple: $\sqrt{\ln(x)} = \frac{1}{2 \sqrt{\ln(x)} x}$

- Si $v$ est dérivable et bijective sur $I$, la fonction réciproque de $f$ est
  aussi dérivable sur $f(I)$ et
  $$(f^{-1})'(x) = \frac{1}{f'(f^{-1}(x))}$$

  Exemple: $(\sin^{-1}(x))' = \frac{1}{\cos(\sin^{-1}(x))} = \frac{1}{\sqrt{1 -
  \sin^2(\sin^{-1}(x))}} = \frac{1}{\sqrt{1 - x^2}}$ (il faut faire attention au
  domaine de définition!

Ces régles donnent un algorithme qui permet de dériver n'importe quelle
fonction dérivable (si l'on connaît la dérivée des fonctions de base).
Parfois les difficultés que l'on a en dérivant vienne de l'application des
deux dernières régles ou du fait que l'on simplifie en même temps que l'on
dérive.

## Études de fonctions

La dérivée donne la pente de la tangente, donc son signe donne le sens de la
variation de la fonction:

- si la dérivée de $f$ est positive ou nulle sur $I$, $f$ est croissante sur $I$

- si la dérivée de $f$ est négative ou nulle sur $I$, $f$ est décroissante sur $I$

Attention, si la dérivé s'annule en un point, on a une tangente horizontale,
mais la fonction reste souvent strictement monotone. Il faut que la dérivée
reste nulle sur un intervalle pour que la fonction soit constante.

Donc le schéma pour étudier une fonction est le suivant:

1. Calcul du domaine de définition / continuité / dérivabilité

2. Calcul de la dérivée

3. Étude du signe de la dérivée

4. Quelques calculs de quelques valeurs. En général, on
  calcule aussi quelques limites, assymptotes, etc. que l'on ne
  traitera pas pour l'instant.

5. Tableau de variation.

6. Tracer de la courbe.

Voici un exemple: on étudie la fonction $$f(x) = \frac{1}{3} x^3 +
\frac{1}{x}$$

1. La fonction est définie et dérivable sur $\mathbb{R}^* = ]-∞,0[ ∪
      ]0,+∞[$ (pas définie en $0$ à cause de la division par $x$).

2. On dérive $f$:
$$
      \begin{array}{lcl}  f'(x) &=& \frac{1}{3} × 3 x² - \frac{1}{x²} \\
              &=& x² - \frac{1}{x²} \\
      \end{array}
$$

3. On résout une inéquation pour chercher le signe de $f'(x)$, sans
      oublier que $x≠ 0$:

$$ \begin{array}{rcll} x² - \frac{1}{x²} &>& 0 &\text{($× x²$ des deux côtés, $x ≠ 0$)}\\
        x⁴ - 1 &>& 0 & \text{(identité remarquable)}\\
        (x² - 1)(x² + 1) &>& 0 &\text{(identité remarquable encore)}\\
        (x - 1)(x+1)(x² + 1) &>& 0 \end{array} $$

4. Calcul de quelques valeurs de $f$, en particulier là où $f'$ s'annule:
      $$f(-1) = \frac{-1}{3} × (1)³ + \frac{1}{-1} =
        \frac{-1}{3} - 1 ≃ -1,3333$$
      $$f(1) = \frac{1}{3} × (1)³ + \frac{1}{1} = \frac{1}{3} + 1 ≃ 1,3333$$

5. Tableau de variation
```tikz
        \tkzTabInit{$x$ / 1 , $x-1$ / 1, $x+1$ / 1, $x² + 1$ / 1,
                    $f'(x)$ / 1, $f(x)$ / 2}
                   {$-\infty$, $-1$, $0$, $1$, $+\infty$}
        \tkzTabLine{, -, , - , , -, z, +, }
        \tkzTabLine{, -, z, +, , +, , + }
        \tkzTabLine{, +, , +, , +, , + }
        \tkzTabLine{, +, z, -, d, -, z, + }
        \tkzTabVar{ -/{} , +/$-1-\frac{1}{3}$ , -D+/{}, -/$1+\frac{1}{3}$, +/{} }
```

6. TRacer de la courbe

```tikz
          \begin{axis}[
              axis lines = center,
              xlabel = $x$,
              ylabel = {$y$},
              scale=0.8,
              ymin=-6.5,
              ymax=6.5,
			  width=10cm,
            ]
            \addplot [
              domain=-3.2:3.2,
              smooth,
              samples=500,
              color=blue,
            ]
            {1/3*x^3 + 1/x};
          \end{axis}
```

# Quelques mots sur les suites

Une suite c'est une fonction de $\mathbb{N} \to \mathbb{R}$.
Beaucoup des concepts décrits plus haut s'applique aux suites,
comme le fait que la suite soit croissante.

Par contre le fait que l'ensemble des entiers naturels soit discontinue
implique que les notions de continuité, de dérivabilité ou de limite en un
point n'ont pas de sens.

## Limite d'une suite

À venir ...

## Suite définie par récurrence

À venir ...

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

## Exercices du chapitre

Calculer le domaine de définition/continuité et dérivabilité ainsi que les
dérivés des expressions suivantes:

1. $x^4 - 5x^2 + 1$

2. $\frac{x-1}{x^2 + 1}$

3. $\frac{1}{\sqrt{x^2 + 1}}$

4. $x \ln(x)$: calculer les 3 premières dérivées.

5. $\ln(\ln(x))$ et $\ln(\ln(\ln(x)))$.

6. $e^{x^2}$: calculer les 4 premières dérivées. Remarquez que la dérivé à
  l'ordre $n$ est de
  la forme $p_n(x) e^{x^2}$ où $p_n(x)$ est un polynôme. Trouver une formule
  pour calculer $p_{n+1}(x)$ à partir de $p_n(x)$ et calculer les 5 premières
  dérivées avec cette formule.


Problèmes des annales faisables à ce point:

- [2015](../Annales/2015\ -\ ING_1_2015_matphyap.pdf) problème II (sauf les
  calculs de limites)

- [2017](../Annales/2015\ -\ ING_1_2015_matphyap.pdf) problème I

- [2021](../Annales/2021_c_inge_math_phy_metropole.pdf) problème II (sauf
  question 4)
