<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async
src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
<div style="position: fixed; right:10px; top: 0px; font-weight: bold;
            font-size: x-large;">
  <a href="Fonctions.html" style="text-decoration: none;">←</a>
  <a href="../Maths.html" style="text-decoration: none;">↑</a>
  <a href="Lineaire.html" style="text-decoration: none;">→</a>
</div>

# Intégrales et équations différentielles

## Primitives et intégrales

La primitive c'est juste l'opération inverse de la dérivation. Mais,
contrairement à la dérivation, il n'y a pas d'algorithme pour trouver la
primitive d'une fonction.

Les primitives de $f$ sont définie à *une constante près*. Si $F$ est une
primitive de $f$ (ce qui veut exactement dire que $F'(x) = f(x)$). Alors
toutes les primitives de $f$ peuvent s'écrire $x \mapsto F(x) + C$ où $C$
est un nombre réel. En fait, c'est un peu plus compliqué si la fonction $f$
n'est pas continue, car on peut changer de constante à chaque point de discontinuité
de $f$.

**Exercice**: trouver toutes les primitives de $x \mapsto \frac{1}{x}$.

Lorsque $F$ est une primitive de $f$, on définit l'intégrale de $f$ entre $a$
et $b$:

$$\int_a^b f(t) {\textrm d}t = [F(t)]_a^b = F(b) - F(a)$$

La notation compliquée $\int_a^b f(t) {\textrm d}t$ est juste un nom (compliqué donc)
pour $F(b) - F(a)$. Un point important est que $F(b) - F(a)$ ne dépend pas
de la constante choisie pour $F$. Si on change de constante, on a

$$(F(b) + C) - (F(a) + c) = F(b) - F(a)$$

Le ${\textrm d}t$ sert à désigner la variable d'intégration (en général, $x$, $t$, $u$
ou $v$).

On note aussi l'usage des crochets pour noter la différence. Cela fait
gagner de la place en écrivant $F$ une seule fois.

Une fois introduit la notation pour l'intégrale, la primitive de $f$ nulle en
$a$ (avec $a$ dans le domaine de définition de $f$) s'écrit:

$$ F(x) = \int_a^x f(t) {\textrm d}t $$

Il est clair que $F(a) = 0$, car $F(a) = G(a) - G(a)$ pour n'importe quelle
primitive $G$ de $f$. Il est aussi clair que c'est une primitive:
$F(x) = G(x) - G(a)$ et donc $F'(x) = G'(x) = f(x)$.

Dans beaucoup d'ouvrages, on note simplement $\int f(t) {\textrm d}t$ une
primitive de $f$. Cette notation est problèmatique, car il est bizarre et peut
conduire à des erreurs de donner un nom à une primitive de $f$ sans préciser
laquelle.

## Calcul de primitive

Pour calculer les primitives, on utilise les réglès de dérivation à
l'envers. Mais on n'est pas toujours en mesure d'appliquer une de ces règles,
il faut donc essayer de s'y ramener. Voici les 4 cas que l'on utilise:

- Une primitive de la somme est obtenue en faisant la somme des primitives:

  $$\int_a^x (f(t) + g(t)) \textrm d t =
    \int_a^x f(t) \textrm d t + \int_a^x g(t) \textrm d t $$

  Cela vient de la règle $(f(x) + g(x))' = f'(x) + g'(x)$.

- On peut *sortir les constantes*:

  $$\int_a^x c f(t) \textrm d t =
    c \int_a^x f(t) \textrm d t $$

  Cela vient de la règle $(a f(x))' = a f'(x)$.

- Intégration par partie:

  $$\int_a^x (u(t) v'(t)) \textrm d t = [u(t)v(t)]_a^x - \int_a^x (u'(t) v(t))
  \textrm d t$$

  Cette formule vient de celle pour la dérivée du produit. Pour l'appliquer,
  il faut reconnaître $v'(t)$ la dérivée d'une fonction $v$. On prend souvent
  $v'(t) = 1$ et donc $v(t) = t$.

  Exemple avec $u(t) = \ln(t)$, $v(t) = t$ et donc $u'(t) = \frac{1}{t}$
  et $v'(t) = 1$, on peut calculer la primitive de $\ln$ nulle en $1$:
  $$\begin{eqnarray*}
  \int_1^x \ln(t) \textrm d t &=& \int_1^x u(t) v'(t) \textrm d t \cr
     &=& [u(t)v(t)]_1^x - \int_1^x u'(t) v(t) \textrm d t \cr
	 &=& \ln(x) x - \ln(1) - \int_1^x \frac{1}{t} t \textrm d t \cr
	 &=& x \ln(x) -  \int_1^x \textrm d t \cr
	 &=& x \ln(x) -  [t]^x_1 \cr
     &=& x \ln(x) - x + 1 \cr
	 \end{eqnarray*}$$

  Remarque: on peut enlever le $1$ et on trouve une primitive en nulle en $0$,
  car $x \ln(x)$ tend vers $0$ quand $x$ tend vers $0$.



- Changement de variables:

  $$\int_a^x f(u(t)) u'(t) \textrm d t = \int_{u(a)}^{u(x)} f(u) \textrm d u$$

  Cette formule vient de la dérivation de la composée $f(g(x))$. Il est
  difficile de savoir quand l'appliquer! Souvent on vous donne le changement
  de variable, c'est à dire la fonction $u$. On parle de changement de
  variable, car on va poser $u = u(t)$ pour remplacer la variable $t$ par la
  variable $u$.

  Attention: il faut aussi changer les bornes!

  Exemple: avec le changement de variable $u(t) = \sqrt{t}$ et donc $u'(t) =
  \frac{1}{2 \sqrt{t}} = \frac{1}{2 u(t)}$ et donc $\frac{1}{u'(t)} = 2 u(t)$

  $$\begin{eqnarray*}
  \int_0^x \frac{1}{1 + \sqrt{t}} \textrm d t &=& \int_0^x \frac{1}{1 + u(t)}
  \frac{u'(t)}{u'(t)} \textrm d t \cr
  &=& \int_0^x \frac{1}{1 + u(t)} 2 u(t) u'(t) \textrm d t \cr
  &=& \int_0^\sqrt{x} \frac{2 u}{1 + u} \textrm d u \cr
  &=& 2 \int_0^\sqrt{x} \frac{u}{1 + u} \textrm d u \cr
  &=& 2 \int_0^\sqrt{x} 1 - \frac{1}{1 + u} \textrm d u \cr
  &=& 2 \int_0^\sqrt{x} \textrm d u - 2 \int_0^\sqrt{x} \frac{1}{1 + u} \textrm d u \cr
  &=& 2 [u]_0^\sqrt{x} - 2 [\ln(1+u)]_0^\sqrt{x} \cr
  &=& 2 \sqrt{x} - 2 \ln(1+\sqrt{x})
	 \end{eqnarray*}$$

  **Exercice**: Comment a-t-on fait la dernière étape ?

Enfin il faut connaître quelques primitives usuelles. On va commencer
par une courte liste que l'on allongera un peu plus tard.

- Une primitive de $x^b$ est $\frac{x^{b+1}}{b+1}$ si $b \neq -1$. Il suffit de
  dériver pour s'en convaincre. Avec les deux premières règle ci dessus, on
  obtient les primitives des polynômes.

  Exemple: les primitives de $x^2 - 3x + 1$ sont $\frac{x^3}{3} -
  \frac{3x^2}{2} + x + C$ où $C$ est une constante quelconque.

- Une primitive de $\frac{1}{x}$ est $\ln(x)$ ou $\ln|x|$ si $x$ peut être négatif.

  Plus généralement, une primitive de $\frac{c}{ax+b}$ est
  $\frac{c}{a}\ln|ax+b|$. Là encore il suffit de dériver pour s'en convaincre.

  Cela permet de calculer la primitive de toutes les fractions rationnelles
  avec un dénominateur de degré 1. En effet, une fraction rationnelle de la
  forme $\frac{P(x)}{ax+b}$ peut toujours s'écrire $Q(x) + \frac{c}{ax+b}$
  avec $Q(x)$ un polynôme. Il suffit de mettre au même dénominateur et
  d'identifier les deux membres pour trouver $Q(x)$.

- Une primitive de $e^x$ est $e^x$ (l'exponentielle étant sa probre dérivée,
  $\sin(x)$ est une primitive de $\cos(x)$ et $-\cos(x)$ est une primitive de
  $\sin(x). De manière générale, une primitive de $f'$ est $f$. Donc si l'on
  reconnaît une dérivée (par exemple à cause de la question précédente du
  problème), on trouve la primitive immédiatement.


## Interprétation géométrique

L'intégrale d'une fonction représente l'aire entre la courbe et l'axe des
$x$. Ainsi, si $a < b$, $\int_a^b f(t) \textrm d t$ est l'aire
entre le courbe d'équation $y = f(x)$ et l'axe des $x$.

Par exemple, on peut calculer l'aire d'un demi-cercle de rayon 1 par
$$
\int_{-1}^1 \sqrt{1 - t^2} \textrm d t = \frac{\pi}{2}
$$

**Exercice**: faire le calcul grâce au changement de variable $t = \sin(u)$
et donc $u = \sin^{-1}(t)$. Il faut utiliser $\cos^2(x) + \sin^2(x) = 1$.

Attention:
on compte négativement les parties en dessous de l'axe des $x$:

```tikz
          \begin{axis}[
              axis lines = center,
              xlabel = $x$,
              ylabel = {$y$},
              scale=0.8,
              ymin=-1,
              ymax=1,
			  xmin=-2,
			  xmax=2,
			  width=10cm,
            ]
            \addplot [
              domain=-1.57:0,
              smooth,
              samples=500,
              color=blue,
			  name path=A1,
            ]
            {sin(x*180/3.1415927)};
            \addplot [
              domain=0:1.57,
              smooth,
              samples=500,
              color=blue,
			  name path=A2,
            ]
            {sin(x*180/3.1415927)};
			\addplot[domain=-1.57:0,draw=none,name path=B1] {0};
			\addplot[domain=0:1.57,draw=none,name path=B2] {0};
			\addplot+[red] fill between[of=A1 and B1,soft clip={domain=-2:2}];
			\addplot+[green] fill between[of=A2 and B2,soft clip={domain=-2:2}];
          \end{axis}
```

Ainsi, l'intégrale ci-dessous représente l'aire verte mois l'aire rouge et
donc elle est nulle par symétrie.

$$ \int_{-\frac{\pi}{2}}^{\frac{\pi}{2}} \sin(t) \textrm d t = 0$$

## Équation différentielle

Une équation différentielle est une équation dont l'inconnue est une
fonction! De plus l'équation relie la fonction est ses dérivés.

Par exemple, en physique, on a l'équation du mouvement. Si $F_x(x)$ sont le blian
des forces qui s'exercent au point $x$, dans la direction de l'axe des $x$, on trouve pour le mouvement d'une particule ponctuelle:

$$ m x''(t) = F(x(t)) $$

Remarque: lorsque l'on étudie des équations différentielles, la fonction
s'appelle souvent $x$ et la variable $t$. De plus, on omet souvent la
variable. Ainsi les 4 équations suivantes sont les mêmes:

$$ x' = 3 x \hspace{1cm} x'(t) = 3 x(t) \hspace{1cm} f'(x) = 3 f(x) $$

On va voir quelques cas courants de résolution d'équations différentielles:

### Les équations différentielles linéaires

- Équation linéaire du premier ordre à coefficients constants sans second
  membre. Ces équations sont de la forme

  $$a x'(t) + b x(t) = 0$$

  On cherche une solution de la forme $x(t) = e^{\lambda t}$. On a donc
  $x'(t) = \lambda e^{\lambda t} = \lambda x(t)$.

  Donc en remplaçant dans l'équation on trouve $a \lambda + b = 0$ et donc

  $$ \lambda = - \frac{b}{a} $$.

  De plus, si $x(t)$ est une solution, $k x(t)$ aussi. Donc toutes les
  solutions sont de la forme:

  $$ x(t) = k e^{- \frac{b}{a} t} \text{ avec } k \in \mathbb{R} $$

- Équation linéaire du premier ordre à coefficients constants avec second
  membre. Ces équations sont de la forme

  $$a x'(t) + b x(t) = f(t)$$

  On utilise la méthode de la variation de la constante. C'est à dire que l'on
  prend la solution de l'équation sans second membre et on remplace la
  constante $k$ par une fonction $k(t)$.

  On pose donc $x(t) = k(t)e^{- \frac{b}{a} t}$ et donc
  $x'(t) = k'(t)e^{- \frac{b}{a} t} - \frac{b}{a} x(t)$
  En substituant dans  l'équation, on trouve:

  $$a k'(t) e^{- \frac{b}{a} t} = f(t)$$

  Et donc

  $$ k'(t) = \frac{1}{a} f(t)  e^{\frac{b}{a} t} $$

  En intégrant,

  $$ k(t) = \int_a^t \frac{1}{a} f(u)  e^{\frac{b}{a} u} \textrm d u $$

  Et finalement,

  $$ x(t) = e^{- \frac{b}{a} t}
     \int_a^t \frac{1}{a} f(u)  e^{\frac{b}{a} u} \textrm d u
  $$

  Il est important de remarquer que toutes les solutions s'obtiennent comme
  somme d'une solution particulière de l'équation avec second membre et une
  solution de l'équation sans second membre. Donc si on connaît une solution
  de l'équation avec second membre, le plus gros du travail est fait.

  Voici un exemple: on veut résoudre

  $$ x'(t) + x(t) = e^t $$

  Les solutions de l'équation sans second membre sont $k e^{-t}$. On cherche
  donc une solution de la forme $k(t) e^{-t}$. En remplaçant, on trouve

  $$ k'(t) e^{-t} = e^t $$

  Et donc

  $$ k'(t) = e^{2t} $$

  En intégrant, on trouve

  $$ k(t) = \frac{1}{2} e^{2t} + C $$

  Et donc

  $$ x(t) = \frac{1}{2} e^{t} + C e^{-t} $$

- Équation linéaire du second ordre à coefficients constants sans second
  membre. Ces équations sont de la forme

  $$a x''(t) + b x'(t) + c x(t) = 0$$

  On cherche une solution de la forme $x(t) = e^{\lambda t}$. On a donc
  $x'(t) = \lambda e^{\lambda t} = \lambda x(t)$ et $x''(t) = \lambda^2 x(t)$.

  Donc en remplaçant dans l'équation on trouve

  $$ a \lambda^2 + b \lambda + c = 0 $$

  On résoud alors l'équation et on a trois cas:

  - Si $\Delta = b^2 - 4ac > 0$, on trouve deux solution $\lambda_1$ et
    $\lambda_2$ et toutes les solutions sont de la forme:

	$$ x(t) = C_1 e^{\lambda_1 t} + C_2 e^{\lambda_2 t} $$

  - Si $\Delta = 0$, on trouve une solution $\lambda$ et
    toutes les solutions sont de la forme:

	$$ x(t) = C_1 e^{\lambda t} + C_2 t e^{\lambda t} $$

  - Si $\Delta < 0$, on trouve deux solutions complexes conjuguées
    $z_1 = \lambda + i \omega$ et $z_2 = \lambda - i \omega$

	On a donc des solutions complexes de la forme
	$$C_1 e^{\lambda t + i \omega t} + C_2 e^{\lambda t - i \omega t}$$

	Et en prenant $C_1 = C_2 = 1$ ou $-C_1 = C_2 = i$, on trouve deux
    solutions réelles:

	$$ e^{\lambda t} \cos(\omega t) \text{ et } e^{\lambda t} \sin(\omega t) $$

    Toutes les solutions sont alors de la forme

	$$ C_1 e^{\lambda t} \cos(\omega t) + C_2 e^{\lambda t} \sin(\omega t) $$

	Ou encore en utilisant la formule pour $\cos(\alpha + \beta)$:

	$$ C e^{\lambda t} \cos(\omega t + \phi) $$

- Équation linéaire du second ordre à coefficients constants avec second
  membre. Ces équations sont de la forme

  $$a x''(t) + b x'(t) + c x(t) = f(t)$$

  Comme pour les équations, on résoud sans le second membre
  et on cherche une solution particulière de l'équation avec second membre
  en utilisant la méthode de la variation de la constante. On fait varier les
  deux constantes et on obtient un système de deux équations à deux inconnues
  que l'on peut résoudre et enfin, on doit intégrer ... C'est probablement
  un peu trop pour ce cours, même si le programme ne l'exclu pas.


### Les équations à variables séparables

Ce sont des équations de la forme

$$x'(t) = f(x(t)) g(t) $$

Dans un premier temps, on suppose que $f(x(t))$ ne s'annule pas (ce qui est
parfois toujours vrai, par exemple si $f(x) = 1 + x^2$). On écrit alors

$$\frac{x'(t)}{f(x(t))} = g(t)$$

Si on trouve $G$ une primitive de $g$ et $H$ une primitive de $\frac{1}{F}$,
on intègre des deux côtés, avec le changement de variable $u = x(t)$ à
gauche. On trouve:

$$ H(x(t)) = G(t) + C \text{ pour } C \in \mathbb{R} $$

Si $H$ est bijective, on trouve alors

$$ x(t) = H^{-1} (G(t) + C) $$

Remarque: si $f$ s'annule en $x_0$, on a une solution constante $x(t) = x_0$,
et dans ce cas, dans certains cas on peut recoler des solutions différentes
passant par $x_0$.

Exemple on veut résoudre

$$x'(t) = \sqrt{x(t)}$$

On obtient

$$\frac{x'(t)}{\sqrt{x(t)}} = 1$$

En intégrant, avec un changement de variable, on trouve

$$2 \sqrt{x(t)} = t + K_1 $$

Et donc
$$x(t) = \left(\frac{t}{2} + K_2\right)^2 $$

Ces solutions ne sont valables que si $\frac{t}{2} + K_2 \geq 0$, sinon,
on a $x'(t) = - \sqrt{x(t)}$.

## Exercices du chapitre

Calculer

- $\int_{-1}^1 (t^2 - t + 1) \textrm d t$
- $\int_0^1 \frac{x}{1+x^2} \textrm d x$
- $\int_0^1 x e^x \textrm d x$

Problèmes de concours:

- [2011](../Annales/2011-ING_1_2011_mathphysiappli.pdf) problème II
- [2015](../Annales/2015\ -\ ING_1_2015_matphyap.pdf) problème II
- [2019](../Annales/2019-ING19_INT_MATHS_PHYSIQUE.pdf) problème II et III
- [2021](../Annales/2021_c_inge_math_phy_metropole.pdf) problème I et II (on a
  déjà fait le début du problème II)

- [2015*](../Annales/2015_Maths.pdf) problème IV: il faut chercher les
  solutions sous forme de polynômes, si on a deux solutions différentes, on
  les a toutes par combinaison linéaire.
- [2016*](../Annales/2016_Mathematiques.pdf) problème III (variable séparable).
- [2021*](../Annales/2021_IIM-interne-mathematiques.pdf) problème IV.
