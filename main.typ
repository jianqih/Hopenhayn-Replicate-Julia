
#set text(size: 14pt,font: "Linux Libertine")
#set page("a4",number-align: center, numbering: "1")
#let title = [Firm Dynamics]
#align(center, text(18pt)[*#title*])
#set heading(numbering: "1.")
#set math.equation(numbering: "(1)")
#import "@preview/physica:0.9.2": *
#set cite(style: "chicago-author-date")
#let pc = (citation) => {
  set cite(form: "prose")
  citation
}

This two papers #pc[@hopenhayn1992entry] and #pc[@hopenhayn1993job] are important papers in firm dynamics. 
- Workhorse model of industry dynamics
- Output price $p$ endogenous
- Endogenous measure of heterogeneous firms
  - *DRS* production function
  - Perfect competition in product and labor market
  - No aggregate shocks
  - Idiosyncratic risk
  - Entry-exit dynamics
  - fixed cost to enter
  - fixed cost to operate each period.
- Partial equilibrium: exogenous industry demand
/ Heterogeneous firms: productivity $z$ and the output $ f(z,n)=z n^alpha, alpha in (0,1) $
- Static firm-level profits $ pi (z;p)=max p dot f(z,n)-n -p dot c_o $  $c_o$ operating costs per period.
- optimal employment $ n(z;p)=(p dot alpha dot z)^(1/(1-alpha)) $
- Incumbents enter the period with states $z_(-1)$
- Exit decision: if stay, firms draw new productivity level $z tilde.op  $


/ Dynamic problem of the firm: There is a large pool of identical potential entrants deciding whether to become active or not.


  
= Model I






- General equilibrium version of @hopenhayn1992entry
- Non-convex adjustment cost (firing costs) $arrow$ firm-level employment additional state variable
- No aggregate shocks
- Optimal employment policy characterized by _inaction_ region.
- Endogenous _Misallocation_ across heterogeneous plants.

/ Overview: time is discrete, the wage is the model numeraire, and output price $p$ is endogenous. representative household. Endogenous measure of heterogeneous firms.

= Model II
A stochastic production function:
$ p_t f(n_t,s_t)-n_t-p_t f_t -g(n_t,n_(t-1)) $
- $c_f$: fixed operating cost.
- $n_t,p_t$: hire $n_t$ and output $p_t$.
- $s_t$: firm-specific shock to production opportunities.
- $F(s,s')$: each current value of the shock. 
- $g(n_t,n_(t-1))=tau dot max(0,n_(t-1)-n_t)$ captures the presence of adjustment costs.
// firm has a shock equal
- $c_e$ one-time enter cost.
Each new entrant receives its current value of $s$ as a draw from the dist. $nu$.
/ Preference: $ sum_(t=1)^(oo)beta^t [u(c_t)-v(n_t)] $
They have idiosyncratic risks:
$ sum_(t=1)^(oo)beta^t [u(c_t)-a N_t] $
- $N_t$ is the fraction of individuals employed in period $t$. 
- discount factor $beta = 1/(1+r)$
/ Equilibrium: The Bellman equation is $ W(s,n;p)=max_(n'>=0){p f(n',s)-n'-p c_f -g(n',n)}\ +beta max[E_s W(s',n';p)-g(0,n')] $
- list $p$ as a stationary price level.
/ Value function: the value of entering gross of entry costs, $W^e$ can be computed by given $W(s,0;p)$
$ W^e (p)=integral W(s,0;p)dif nu(s) $
- state variable pairs $(s,n)$ we denote $mu(s,n)$
/ Output $Y$: it takes $ Y(mu,M;p)=integral [f(N(s,n;p),s)-c_f]dif mu(s,n)\ +M integral f(N(s,0;p),s)dif nu(s). $
The first integral, output for a firm with state variable $(s,n)$ is computed using the optimal employment rule $N$. 
/ Labor demand and profits: $ L^d(mu,M,p)=integral N(s,n;p)dif mu(s,n)+M integral N(s,0;p)dif nu(s), \ Pi(mu,M,p)=p Y(mu,M,p)-L^d(mu,M,p)-R(mu,M,p)-M p c_e.  $
/ Individual optimization problem:
$ max u(c)- a N \ s.t. quad p c<= N+Pi+R (w=1 "is the numeraire") $
solution: $ N=L^s (p,Pi+R) $

/ Equilibrium: output price $p^*>=0$ a mass of entrants $M^*>=0$, and a measure of incumbents $mu^*$, such that 
- Labor market clearing: $L^d (mu^*,M^*,p^*)=L^s (p^*,Pi(mu^*,M^*,p^*)+R(mu^*,M^*,p^*))$
- $T = mu^*$
// - $W^e (p^*)<= p^* c_e$ with equality if $M^*>0$
- Free-entry: $nu^e = c_e$

= Algorithm
The stationary equilibrium can be characterized by 
- production function: concave and differentiable.
- $L_2^s$ and income effect: negative.
- $F$: continuous and decreasing in the first argument. 


+ compute $p$, any given $p$ can be used for computing $W(s,n;p)$ and $W^e (p)$
+ determine whether an equilibrium: if not, finds $mu^*$ to compute transition function $T$. The fixed point exists if the firm's inflow equals outflow.
+ determines the scale factor $M^*$. (from market clearing condition)


= Benchmark model
$ f(n,s)=s n^theta ,quad 0<= theta <=1 \ g(n_t,n_(t-1))=0, quad \ log(s_t) = a + rho log(s_(t-1))+epsilon_t, quad epsilon_t \ u(c)=ln(c), quad nu(n)=A n,quad A>0. $ 
Two decision rules $ log(n_(t+1))=(1-rho)/(1-theta)(log theta +log p+a/(1-rho)) \ + rho(log(n_(t-1)))+(1/(1-theta))epsilon_t. $

/ MPL: $ pdv(f(z,n),n)=1/p $ optimal employment decision given by:
$ n'= (alpha p z)^(1/(1-alpha)) $
Labor is a fully flexible input production.
MPL is the solution of two necessary conditions: $ p pdv(f(z,n),n)+1/(1+r)pdv(tilde(nu)(z,n),n)=1 quad "if " n>n_(-1)  \ p pdv(f(z,n),n)+1/(1+r)pdv(tilde(nu)(z,n),n)=[1+pdv(g(n,n_(-1)),n)] quad "if " n <n_(-1) $

== Role of volatility $sigma_epsilon$
+ When shocks are less volatile, efficient employment does not change often. 
  - Adj. costs are more important.
+ More vol. $arrow$ efficient employment changes much more often.
  - Adj. costs are less important.
+ While reducing dispersion of $"MPL"$, lower vol. also reduces selection.

= Embedded Searching and Match
-  Elsby M. and Michaels R. 2013. “Marginal Jobs, Heterogeneous Firms, and Unemployment Flows.” American Economic Journal: Macro, Vol. 5, No. 1, pp. 1-48
- Multi-worker heterogeneous firms $arrow$ well-defined firm-size.
- Idiosyncratic productivity shocks $arrow$ endogenous job.
- Search frictions $arrow$ unemployment
- Wage bargaining $arrow$ wage dispersion.


= Financial Markets and Firm Dynamics @Cooley2001
- financial frictions can account for the simultaneous dependence of firm dynamics on size. 
-  In each period, firms have access to a production technology.
- $y=(z+epsilon)G(k,l)$ where $epsilon$ is the idiosyncratic shock. 
- As in @hopenhayn1992entry, assume there exists a fixed cost of production. 
- Maximization of expected profits, $ max_k {integral_epsilon (z+epsilon)F(k)f(dif epsilon)-(r+phi.alt)k} \ =max_k {z F(k)-(r+phi.alt)k}. $ and $phi.alt$ is the cost of labor and capital. $phi.alt k=[delta+w(l/k)]k$, where $w$ is the wage rate.
- In partial eqbm, the mass of new entrant firms is nondegenerate only if the surplus from creating new firms is nonpositive, $V(z)-kappa<=0$.
/ The firm's problem: each period, after the realization of the revenues and the observation of the new $z$, but before issuring new shares or paying dividends, the firm decides whether to default on its debt. 
$ pi(e,b,z+epsilon)=(1-phi.alt)(e+b)+(z+epsilon)F(e+b)-(1+tilde(r))b $
- $tilde(r)$: interest rate charged by intermediary.
- $z$: tech level, 
- $e$: assets held by firms. $b$: firm's debt. $k=e+b$ is the input capital.
Firm needs to borrow from intermediary, it takes $lambda$ peri unit of funds. If firm choose to default, it will charge a cost $xi$.
- Denote $underline(e)(z')$ the value of net worth if defaults. And denote $underline(epsilon)(z,e,b,z')$ as threhold shock.
$ pi(e,b,z+underline(e))=(1-phi.alt)(e+b)+(z+underline(epsilon))F(e+b)-(1+tilde(r))b=underline(e)(z) $
As the lender, she needs to consider default probability. Using the distribution to describe the risk.
$ (1+r)b=underbracket(integral_(-oo)^(underline(epsilon))[(1-phi.alt)(e+b)\ +(z+epsilon)F(e+b)-xi]f(dif epsilon),"Default ")+underbracket((1+tilde(r))b integral_(underline(epsilon))^oo f(dif epsilon),"pay back") $
Eliminate $tilde(r)$ in 


Proposition 3: There exists a unique function $Omega^*(z,e)$ that satisfies the functional equation. 








#bibliography("ref.bib")