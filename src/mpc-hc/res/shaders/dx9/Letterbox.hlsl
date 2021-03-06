// $MinimumShaderProfile: ps_2_0
/*
 * (C) 2003-2006 Gabest
 * (C) 2006-2013 see Authors.txt
 *
 * This file is part of MPC-HC.
 *
 * MPC-HC is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * MPC-HC is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

sampler s0 : register(s0);
float4 p0 :  register(c0);

#define width  (p0[0])
#define height (p0[1])

float4 main(float2 tex : TEXCOORD0) : COLOR
{
	float4 c0 = 0;

	float2 ar = float2(16, 9);
	float h = (1 - width / height * ar.y / ar.x) / 2;

	if (tex.y >= h && tex.y <= 1 - h) {
		c0 = tex2D(s0, tex);
	}

	return c0;
}
