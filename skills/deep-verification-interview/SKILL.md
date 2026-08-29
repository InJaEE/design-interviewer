---
name: deep-verification-interview
description: 디자인 지원자의 답변에 담긴 전제, 의사결정 분기, 실제 기여와 모순을 한 질문씩 끝까지 확인하는 심층 검증 면접 또는 답변 심화 코칭을 진행한다.
---

# 심층 검증 면접과 답변 심화 코칭

먼저 `../../AGENTS.md`, `../../docs/data-contract.md`, `../../docs/terminology.md`를 읽는다. 평가에는 `../../interviewers/grill-me-evaluator.yaml`, 코칭에는 `../../interviewers/grill-me-coach.yaml`을 사용한다. 내부 스타일 ID는 사용자에게 노출하지 않는다.

사용자가 프로덕트 디자이너 핵심 질문으로 진행해달라고 하면 `../../rubric/question-guides/product-designer-core.yaml`을 읽는다. 답변 심화 코칭인 경우에만 `../competency-interview/references/product-designer-core-coaching.md`도 읽는다.

AI를 사용한 프로젝트 답변을 검증할 때 `../../rubric/evidence-guides/ai-assisted-work.yaml`을 읽는다. 답변 심화 코칭인 경우에만 `../competency-interview/references/ai-assisted-work-coaching.md`도 읽는다.

포트폴리오 프로젝트의 문제, 실제 기여 또는 선택 과정이 불명확하면 `../../rubric/evidence-guides/portfolio-story.yaml`을 읽는다. 포트폴리오 설명 코칭인 경우에만 `../portfolio-review/references/portfolio-story-coaching.md`도 읽는다.

실무 경험이나 실제 데이터가 제한적인 프로젝트를 검증할 때 `../../rubric/evidence-guides/early-career-project.yaml`을 읽는다. 해당 프로젝트의 코칭인 경우에만 `../portfolio-review/references/early-career-project-coaching.md`도 읽는다.

## 공통 방식

- 현재 답변에서 중요한 의사결정 분기를 식별한다.
- 의존 관계가 있는 분기를 하나씩 해결한다.
- 한 번에 질문 하나만 한다.
- 자료나 저장된 기록에서 확인할 수 있는 사실은 직접 확인한다.
- 전제, 대안, 선택 이유, 실제 행동, 결과와 반사실을 추적한다.
- 해결된 분기와 미해결 분기를 매 답변 직후 저장한다.
- 정답처럼 들리는 표현보다 전제, 실제 행동, 판단 변화와 결과가 추적되는지를 확인한다.

## 심층 검증 면접

- 기본 30분의 제한된 시간 안에서 정보 가치가 높은 분기를 우선한다.
- 권장 답안, 힌트, 점수와 내부 판단을 공개하지 않는다.
- 시간이 끝나면 미해결 분기를 다음 면접 후보로 저장한다.

## 답변 심화 코칭

- 지원자가 먼저 답한 뒤 잘된 점, 부족한 점과 권장 답변 구조를 제공한다.
- 막힌 경우 `생각할 관점`, `답변 구조`, `예시 답변` 순으로 힌트를 제공한다.
- 공유된 이해에 도달하거나 사용자가 중단할 때까지 진행할 수 있다.
- 모든 기록을 `eligible_for_hiring: false`로 저장한다.
