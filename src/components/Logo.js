import React from 'react';

export default function Logo({ height = 48, darkBg = false }) {
  const textColor = darkBg ? '#FFFFFF' : '#1B2A4A';

  return (
    <svg
      height={height}
      viewBox="0 0 260 100"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      aria-label="Just Fast Logo"
    >
      <defs>
        <linearGradient id="jGrad" x1="0%" y1="0%" x2="60%" y2="100%">
          <stop offset="0%" stopColor="#38BDF8" />
          <stop offset="100%" stopColor="#1A6FBF" />
        </linearGradient>
      </defs>

      {/* === Letter J === */}
      {/* Vertical bar of J */}
      <rect x="18" y="8" width="13" height="48" rx="3" fill="url(#jGrad)" />
      {/* Hook of J (bottom curve) */}
      <path
        d="M18 50 Q18 68 8 70 Q4 71 4 68 Q4 65 8 64 Q12 63 12 56 L12 50 Z"
        fill="url(#jGrad)"
      />
      {/* Dot of J (top serif / decorative cap) */}
      <rect x="18" y="4" width="13" height="6" rx="3" fill="#38BDF8" />

      {/* === Letter F === */}
      {/* Vertical bar of F */}
      <rect x="44" y="8" width="13" height="58" rx="3" fill="#2D3A4A" />
      {/* Top horizontal bar of F */}
      <rect x="44" y="8" width="36" height="12" rx="3" fill="#2D3A4A" />
      {/* Middle horizontal bar of F */}
      <rect x="44" y="33" width="28" height="11" rx="3" fill="#2D3A4A" />

      {/* === JUST FAST text === */}
      <text
        x="0"
        y="92"
        fontFamily="'Poppins', 'Arial', sans-serif"
        fontWeight="700"
        fontSize="17"
        letterSpacing="4"
        fill={textColor}
      >
        JUST FAST
      </text>

      {/* === Speed lines (dotted) === */}
      {/* Line 1 - long, thin */}
      {[0,4,8,12,16,20,24,30,36,42,50,58,68,79,91,105,121,139,159].map((x, i) => (
        <circle key={`l1-${i}`} cx={x + 38} cy={78} r={i < 8 ? 0.8 : i < 14 ? 1.1 : 1.3} fill="#38BDF8" opacity={0.5 + i * 0.025} />
      ))}
      {/* Line 2 - shorter, lower */}
      {[0,5,10,16,23,31,40,51,64,79,96].map((x, i) => (
        <circle key={`l2-${i}`} cx={x + 55} cy={84} r={i < 5 ? 0.7 : i < 8 ? 1 : 1.2} fill="#1A8FE3" opacity={0.35 + i * 0.04} />
      ))}
      {/* Line 3 - shortest, lower right */}
      {[0,6,13,21,31,43,57,73].map((x, i) => (
        <circle key={`l3-${i}`} cx={x + 85} cy={90} r={i < 4 ? 0.6 : 0.9} fill="#60A5FA" opacity={0.25 + i * 0.05} />
      ))}
    </svg>
  );
}
