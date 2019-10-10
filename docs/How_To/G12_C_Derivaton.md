# $G_{12c}$ Derivation


Eqns for $\sigma_{x}$, $\sigma_{y}$ and $\tau_{xy}$

$$
\begin{aligned} 
\sigma_x &= cos^2(\alpha) \sigma_{1c} + sin^2(\alpha) \sigma_{2c} - 2sin(\alpha)cos(\alpha)\tau_{12c} + cos^2(\theta_L) f_{L} + cos^2(\theta_T) f_{T} \\
\sigma_y &= sin^2(\alpha) \sigma_{1c} + cos^2(\alpha) \sigma_{2c} + 2sin(\alpha)cos(\alpha)\tau_{12c} + sin^2(\theta_L) f_{L} + sin^2(\theta_T) f_{T} \\
\tau_{xy} &= sin(\alpha)cos(\alpha) \sigma_{1c} - sin(\alpha)cos(\alpha) \sigma_{2c} + (cos^2(\alpha) - sin^2(\alpha))\tau_{12c} + cos(\theta_L)sin(\theta_L)f_L + cos(\theta_T)sin(\theta_T)f_T
\end{aligned} 
$$

$\sigma_{x} - \sigma_{y}$ Calculation and replace $C = cos(\alpha)$ and $S = sin(\alpha)$ for simplicity of calculations


$$
\begin{aligned} 
(\sigma_x - \sigma_y) &= C_2(\sigma_{1c} - \sigma_{2c}) - 2S_2 (\tau_{12c}) + C_{2L}f_L + C_{2T}f_T
\end{aligned} 
$$


Assume $T_2 = tan(2\alpha)$, $C_2 = cos(2\alpha)$ and $S_2 = sin(2\alpha)$ for simplicity

$$
\begin{aligned} 
tan(2\alpha) &= \frac{2\tau_{xy}}{(\sigma_x - \sigma_y)} \\
(\sigma_x - \sigma_y) &= 2\tau_{xy}\frac{C_2}{S_2}
\end{aligned} 
$$
