<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async
src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
<div style="position: fixed; right:10px; top: 0px; font-weight: bold;
            font-size: x-large;">
  <a href="Multivar.html" style="text-decoration: none;">←</a>
  <a href="../Maths.html" style="text-decoration: none;">↑</a>
  <a href="Geometrie.html" style="text-decoration: none;">→</a>
</div>

# Trigonométrie et Nombres complexes

## Les fonctions trigonométriques

On définit d'abord $\sin$, $\cos$ et $\tan$ d'un angle sur le cercle unité
(i.e. le cercle de rayon $1$):

```tikz
\draw (0,0) circle (2);
\draw (-2.5,0) -- (2.5,0);
\draw (0,-2.5) -- (0,2.5);

\draw (0,0) -- (2, {2*tan(50)});
\draw (2,0) -- (2, {2*tan(50)});
\draw[->] (1.4,0) arc (0:50:1.4) node at
  ({1.414*cos(15)},{1.414*sin(15)})[right]{$\theta$};
\draw[dashed] ({2*cos(50)}, {2*sin(50)}) -- ({2*cos(50)}, 0) node[below]{$\cos \theta$};
\draw[dashed] ({2*cos(50)}, {2*sin(50)}) -- (0, {2*sin(50)}) node[left]{$\sin
\theta$};
\draw[dashed] ({2}, {2*tan(50)}) -- (0, {2*tan(50)}) node[left]{$\tan \theta$};
```

On voit sur cette figure pourquoi la tangente porte ce nom! Et par Thales, on
a alors:

$$ \tan \theta = \frac{\sin \theta}{\cos \theta} $$

Le théorème de Pytoghore nous donne:

$$ \cos^2 \theta + \sin^2 \theta = 1$$

On rencontre aussi parfois $$\mathrm{cotan} \theta =
\frac{\cos \theta}{\sin \theta} = \frac{1}{\tan\theta}$$

**Exercice** où se trouve $\mathrm{cotan} \theta$ sur le cercle trigonométrique?

Voici l'allure de ces trois fonctions:

```tikz
  \begin{axis}[
      axis lines = center,
      xlabel = $x$,
      ylabel = {$y$},
      scale=0.8,
      ymin=-3,
      ymax=3,
      width=16cm,
      height=8cm,
    ]
    \addplot [
      domain=-13:13,
      smooth,
      samples=500,
      color=blue,
    ]
    {cos(180 * \x / 3.1415927)} node [above left, color=blue] {$y=\cos{x}$};
    \addplot [
      domain=-13:13,
      smooth,
      samples=500,
      color=green,
    ]
    {sin(180 * \x / 3.1415927)} node [pos=0.92,below, color=green] {$y=\sin{x}$};
    \addplot [
      domain=-13:13,
      smooth,
      samples=500,
      color=red,
	  restrict y to domain=-3:3
    ]
    {tan(180 * \x / 3.1415927)} node [pos=0.92,below, color=red] {$y=\tan{x}$};
  \end{axis}
```

**Attention**: on peut utiliser des angles en degré (entre 0 et 180°), mais le
plus souvent, on utilise des angles en radian: (entre 0 et $\pi \simeq
3.1415927$). La conversion degré vers radian se fait en multipliant par
$\frac{\pi}{180}$ et bien sur la conversion inverse en multipliant par
$\frac{180}{\pi}$.

Voici un tableau qu'il faut connaître!

$$
\begin{array}{|c|c|c|c|c|}
\theta (rad.) & \theta (deg) & \cos(\theta) & \sin(\theta) & \tan(\theta) \cr
\hline
0             & 0            & 1            & 0            & 0            \cr
\hline
\frac{\pi}{6} & 30°          & \frac{\sqrt{3}}{2} & \frac{1}{2}  &
\frac{1}{\sqrt{3}} \cr
\hline
\frac{\pi}{4} & 45°          & \frac{\sqrt{2}}{2} & \frac{\sqrt{2}}{2}  &
1 \cr
\hline
\frac{\pi}{3} & 60°          & \frac{1}{2}  & \frac{\sqrt{3}}{2} &
\sqrt{3} \cr
\hline
\frac{\pi}{2}  & 90°          & 0            & 1            & +\infty       \cr
\hline
\end{array}
$$

Les valeurs pour les autres multiples de $\pi/6$ ou $\pi/4$, peuvent se
ramener à ce tableau avec le bon signe en «comptant les tours» sur les cercle
trigonométrique. Il faut se rappeler que $\pi/6$ est
un douzième de tour de cercle et $\pi/4$ un huitième de tour.

Il faut aussi se souvenir des formules suivantes, on être capable de les
retrouver rapidement en regardant les courbes ou le cercle trigonométrique:

**Périodicité** (attention la période est $\pi$ pour tangente et $2\pi$ pour
$\sin$ et $\cos$:

- $\cos(\theta + 2k\pi) = \cos(\theta)$ pour $k \in \mathbb{N}$
- $\cos(\theta + (2k+1)\pi) = -\cos(\theta)$ pour $k \in \mathbb{N}$
- $\sin(\theta + 2k\pi) = \sin(\theta)$ pour $k \in \mathbb{N}$
- $\sin(\theta + (2k+1)\pi) = -\sin(\theta)$ pour $k \in \mathbb{N}$
- $\tan(\theta +  k\pi) = \tan(\theta)$ pour $k \in \mathbb{N}$
- $\tan(\theta +  (k + \frac{1}{2})\pi) = -\frac{1}{\tan(\theta)} = -\mathrm{cotan}(\theta)$ pour $k \in \mathbb{N}$

**Parité et symétrie**

- $\cos(-\theta) = \cos(\theta)$ (fonction paire)
- $\sin(-\theta) = -\sin(\theta)$ (fonction impaire)
- $\tan(-\theta) = -\tan(\theta)$ (fonction impaire)
- $\sin(\theta+\frac{\pi}{2}) = \cos(\theta)$
- $\cos(\theta+\frac{\pi}{2}) = -\sin(\theta)$
- $\cos(\frac{\pi}{2} - \theta) = \sin(\theta)$
- $\sin(\frac{\pi}{2} - \theta) = \cos(\theta)$

**Exercice**: entrainez vous à retrouvez ces formules rapidement.

On verra d'autres formules de trigonométrie après les nombres complexes.

## Nombres complexes

On s'est aperçu que lorsque-l'on ajoute un nombre $i$ tel que $i^2 = -1$,
alors on peut conserver toutes les propriétés de calcul des nombres réels.
On construit ainsi les nombres complexes! On appelle $\mathbb{C}$ l'ensemble
des nombres complexes.

La seule chose qui change (en plus d'avoir deux racines carrés de $-1$, $i$ et
$-i$) c'est que les nombres complexes forment un plan et non plus une droite,
car tous les nombres complexes peuvent s'écrire sous la forme $z = a + ib$. $a
= Re(z)$
est alors la partie réelle, l'abcisse dans le plan complexe et $b = Im(z)$ est la
partie imaginaire (sans le $i$!), l'ordonnée dans le plan complexe.

On peut justifier ceci par les calculs suivants qui utilisent uniquement les
règles de calcul sur les réels et $i^2 = -1$:

- Addition de deux complexes: $(a_1 + i b_1) + (a_2 + i b_2) = (a_1 + a_2) + i
  (b_1 + b_2)$

- Opposé d'un complexe: $-(a + i b) = -a - ib = -a + i(-b)$

- Multiplication de deux complexes: $(a_1 + i b_1)(a_2 + i b_2) = (a_1a_2 -
  b_1b_2) + i (a_1b_2 +a_2b_1)$

- Inverse d'un complexe: $\frac{1}{a + i b} = \frac{a - ib}{(a+ib)(a-ib)} =
  \frac{a - ib}{a^2 + b^2} = \frac{a}{a^2 + b^2} + i \frac{-b}{a^2 + b^2}$

Dans le calcul de l'inverse apparaissent deux choses importantes:

- Si $z = a + ib$, on appelle $\overline{z} = a - i b$ la *quantité
  conjuguée* de $z$, obtenue en changeant uniquement le signe de la partie
  imaginaire.

  La quantité conjuguée *commute* avec toutes les opérations sur les nombres
  complexes : on peut la descendre sous les additions, les soustractions, les
  multiplications, les divisions, etc.: $\overline{z_1 + z_2} =
  \overline{z_1} + \overline{z_2}$,  $\overline{z_1 \times z_2} =
  \overline{z_1} \times \overline{z_2}$, etc.

  Et bien sur $\overline{\overline{z}} = z$ (on change deux fois le signe de
  la partie imaginaire, donc on revient au point de départ).

- Si $z = a + i b$, on appelle $|z| = \sqrt{z \overline{z}} = \sqrt{a^2 +
  b^2}$ le *module* de $z$ qui est un nombre réel positif ou null (null
  uniquement si $z = 0$).

  Une propriété importante du module: $|z_1 z_2| = |z_1||z_2|$. Le module
  étant la notion de valeur absolue.

  Avec la quantité conjuguée et le module, on trouve $\frac{1}{z} =
  \frac{\overline{z}}{|z|}$.


Enfin, l'exponentielle se prolonge aussi au nombre complexe, et
«miraculeusement», les fonctions trigonométriques se mettent à apparaître:

   $$e^{a+ib} = e^a e^{ib} = e^a (\cos(b) + i \sin(b))$$

On remarque alors facilement que $|\cos(b) + i \sin(b)| = \cos^2(b) + \sin^2(b) =
1$ et donc que $|e^{a+ib}| = |e^a|$. Cela permet d'écrire tout nombre complexe
$z$ sous la forme $z = |z|e^{ib}$. $b = Arg(z)$ s'appelle l'argument de $z$ et
il s'obtient en résolvant les équations suivantes pour trouver $b$:
  $$\left\{\begin{array}{rcl}
    \cos(b) &=& \frac{Re(z)}{|z|} \cr
    \sin(b) &=& \frac{Im(z)}{|z|} \cr
	\end{array}\right.
  $$

## Formules de trigonométrie

La plupart des formules de trigonométrie se démontrent facilement, parfois
en passant par les complexes. Voici les six premières:

1. $\cos(a+b) = \cos(a) \cos(b) - \sin(a)\sin(b)$
2. $\cos(a-b) = \cos(a) \cos(b) + \sin(a)\sin(b)$
3. $\sin(a+b) = \sin(a) \cos(b) + \cos(a)\sin(b)$
4. $\sin(a-b) = \sin(a) \cos(b) - \cos(a)\sin(b)$
5. $\cos(2a)  = \cos^2(a) - \sin^2(a) = 2 \cos^2(a) - 1 = 1 - 2 \sin^2(a)$
6. $\sin(2a)  = 2 \sin(a) \cos(a)$
7. $\cos(a)\cos(b) = \frac{1}{2}(\cos(a-b) + \cos(a+b))$
8. $\sin(a)\sin(b) = \frac{1}{2}(\cos(a-b) - \cos(a+b))$
9. $\sin(a)\cos(b) = \frac{1}{2}(\sin(a-b) + \sin(a+b))$
10. $\cos^2(a) = \frac{1}{2}(1 + \cos(2a))$
11. $\sin^2(a) = \frac{1}{2}(1 - \cos(2a))$

les formules 1. et 3. se démontre en écrivant ce qui suit et en égalisant les parties
réelles et imaginaires:
$$\begin{eqnarray*}
\cos(a+b) + i \sin(a+b) &=& e^{i(a+b)} \cr
&=& e^{ia} e^{ib} \cr
&=& (\cos(a) + i \sin(a))(\cos(b) + i \sin(b)) \cr
&=& \cos(a)\cos(b) - \sin(a)\sin(b) + i (\sin(a)\cos(b) + \cos(a)\sin(b)) \cr
\end{eqnarray*}$$

Les formules 2. et 4. se déduisent de 1. et 3. en remplaçant $b$ par $-b$ et
en utilisant le fait que $\cos$ est paire et $\sin$ est impaire.

Les formules 5. et 6. se déduisent de 1. et 3. en prenant $b = a$.

Les formules 7. 8. et 9. en faisant respectivement 1. + 2., 2. - 1. et 3. + 4.

Les formules 10. et 11. à partir de 5. (ou de 7. et 8. avec $b=a$)

**Exercice**: entrainez vous à retrouvez ces formules rapidement.

Attention: les formules 7. 8. 9. 10. et 11., dites *formules de
linéarisation*, permettent de calculer des primitives. Voici un exemple:

$$
\begin{eqnarray*}
\int_0^\pi cos^2(t) \mathrm d t &=& \int_0^\pi \frac{1}{2}(1 + cos(2t))
\mathrm d t \cr
&=& \frac{1}{2}\int_0^\pi \mathrm d t +\frac{1}{2} \int_0^\pi cos(2t)
\mathrm d t \cr
&=& \frac{\pi}{2} +\frac{1}{2} \left[\frac{\sin(2t)}{2}\right]_0^\pi \cr
&=& \frac{\pi}{2}
\end{eqnarray*}
$$
